module.exports = [
  'strapi::logger',
  'strapi::errors',
  'strapi::security',
  'strapi::cors',
  // {
  //   name: 'strapi::cors',
  //   config: {
  //     origin: ['http://localhost:3000', 'https://legalex.by'],
  //   },
  // },
  'strapi::poweredBy',
  'strapi::query',
  'strapi::body',
  'strapi::session',
  'strapi::favicon',
  'strapi::public',
];
