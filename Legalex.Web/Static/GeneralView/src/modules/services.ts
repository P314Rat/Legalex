import { IMediaData } from "."

export interface IService {
  createdAt: string
  updatedAt: string
  publishedAt: string
  Title: string
  ServiceCard: IServiceCard
  tabs: ITabData
}

export interface IServiceCard {
  id: number
  Link: string
  Description: any
  CardBackground: IMediaData
}

export interface ITab {
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

export interface ITabData{
    data: ITab[]
}
