import type { Schema, Attribute } from '@strapi/strapi';

export interface ServicesTable extends Schema.Component {
  collectionName: 'components_services_tables';
  info: {
    displayName: 'Table';
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
    displayName: 'TabRow';
    icon: 'bulletList';
    description: '';
  };
  attributes: {
    Description: Attribute.String;
    Price: Attribute.String;
  };
}

export interface ServicesServiceCard extends Schema.Component {
  collectionName: 'components_services_service_cards';
  info: {
    displayName: 'ServiceCard';
    icon: 'grid';
    description: '';
  };
  attributes: {
    CardBackground: Attribute.Media<'images' | 'files' | 'videos' | 'audios'>;
    Link: Attribute.String;
    Description: Attribute.RichText;
  };
}

declare module '@strapi/types' {
  export module Shared {
    export interface Components {
      'services.table': ServicesTable;
      'services.tab-row': ServicesTabRow;
      'services.service-card': ServicesServiceCard;
    }
  }
}
