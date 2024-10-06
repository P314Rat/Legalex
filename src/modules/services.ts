import { IMediaData } from '.'

export interface IService {
  createdAt: string
  updatedAt: string
  publishedAt: string
  Title: string
  TabTitle: string
  Meta: string
  ServiceCard: IServiceCard
  Tabs: ITabData
  Description: any
  Priority: number
}

export interface ISlide {
  Description: string
  ButtonText: string
  Slide: IMediaData
  Priority: number
}

export interface IServiceCard {
  id: number
  Link: string
  CardBackground: IMediaData
  Priority: number
}

export interface ITab {
  id: number
  attributes: ITabAttributes
}

export interface ITabAttributes {
  Title: string
  Trailer: any
  createdAt: string
  updatedAt: string
  publishedAt: string
  Tables: ITable[]
}

export interface ITable {
  id: number
  Title: any
  Row: IRow[]
}

export interface IRow {
  id: number
  Description: string
  Price: string
}

export interface ITabData {
  data: ITab[]
}
