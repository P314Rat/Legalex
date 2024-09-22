import type { Schema, Attribute } from '@strapi/strapi';

export interface SharedSeo extends Schema.Component {
  collectionName: 'components_shared_seos';
  info: {
    displayName: 'seo';
    icon: 'search';
  };
  attributes: {
    metaTitle: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        maxLength: 60;
      }>;
    metaDescription: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        minLength: 50;
        maxLength: 160;
      }>;
    metaImage: Attribute.Media<'images' | 'files' | 'videos'>;
    metaSocial: Attribute.Component<'shared.meta-social', true>;
    keywords: Attribute.Text;
    metaRobots: Attribute.String;
    structuredData: Attribute.JSON;
    metaViewport: Attribute.String;
    canonicalURL: Attribute.String;
  };
}

export interface SharedMetaSocial extends Schema.Component {
  collectionName: 'components_shared_meta_socials';
  info: {
    displayName: 'metaSocial';
    icon: 'project-diagram';
  };
  attributes: {
    socialNetwork: Attribute.Enumeration<['Facebook', 'Twitter']> &
      Attribute.Required;
    title: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        maxLength: 60;
      }>;
    description: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        maxLength: 65;
      }>;
    image: Attribute.Media<'images' | 'files' | 'videos'>;
  };
}

export interface ServicesTable extends Schema.Component {
  collectionName: 'components_services_tables';
  info: {
    displayName: '\u0422\u0430\u0431\u043B\u0438\u0446\u0430';
    icon: 'bulletList';
    description: '';
  };
  attributes: {
    Row: Attribute.Component<'services.tab-row', true>;
    Title: Attribute.String;
  };
}

export interface ServicesTabRow extends Schema.Component {
  collectionName: 'components_services_tab_rows';
  info: {
    displayName: '\u0421\u0442\u0440\u043E\u043A\u0430 \u0442\u0430\u0431\u043B\u0438\u0446\u044B';
    icon: 'bulletList';
    description: '';
  };
  attributes: {
    Description: Attribute.Text;
    Price: Attribute.String;
  };
}

export interface ServicesServiceCard extends Schema.Component {
  collectionName: 'components_services_service_cards';
  info: {
    displayName: '\u041A\u0430\u0440\u0442\u043E\u0447\u043A\u0430 \u0443\u0441\u043B\u0443\u0433\u0438';
    icon: 'grid';
    description: '';
  };
  attributes: {
    CardBackground: Attribute.Media<'images' | 'files' | 'videos' | 'audios'>;
    Link: Attribute.String;
  };
}

declare module '@strapi/types' {
  export module Shared {
    export interface Components {
      'shared.seo': SharedSeo;
      'shared.meta-social': SharedMetaSocial;
      'services.table': ServicesTable;
      'services.tab-row': ServicesTabRow;
      'services.service-card': ServicesServiceCard;
    }
  }
}
