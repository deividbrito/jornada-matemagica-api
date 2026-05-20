// src/middlewares/validate.js
// Middleware factory para validação de payload com Zod.
//   router.post('/x', validate(schema), controller)         → valida req.body
//   router.get('/x', validate(schema, 'query'), controller) → valida req.query
//   router.get('/:id', validate(schema, 'params'), ...)     → valida req.params
//
// Em sucesso, substitui req[source] pelo objeto parseado (já com coerções).
// Em falha, retorna 400 com array de issues do Zod.

function validate(schema, source = 'body') {
  return (req, res, next) => {
    const data = req[source];
    const result = schema.safeParse(data);
    if (!result.success) {
      return res.status(400).json({
        error: 'Payload inválido.',
        issues: result.error.issues.map((i) => ({
          path: i.path.join('.'),
          message: i.message,
        })),
      });
    }
    req[source] = result.data;
    next();
  };
}

module.exports = validate;
