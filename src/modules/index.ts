export interface IData<T> {
  id: number
  attributes: T
}

export interface ISingleRoot<T> {
  data: IData<T>
  meta: ISingleMeta
}

export interface ISingleMeta {}

export interface ICollectionRoot<T> {
  data: IData<T>[]
  meta: ICollectionMeta
}

export interface ICollectionMeta {
  pagination: IPagination
}

export interface IPagination {
  page: number
  pageSize: number
  pageCount: number
  total: number
}

export interface IMediaData {
  data: IData<IMedia>
}

export interface IMediaSetData {
  data: IData<IMedia>[]
}

export interface IMedia {
  name: string
  alternativeText: any
  caption: any
  width: number
  height: number
  formats: IFormats
  hash: string
  ext: string
  mime: string
  size: number
  url: string
  previewUrl: any
  provider: string
  provider_metadata: any
  createdAt: string
  updatedAt: string
}

export interface IFormats {
  large: ISize
  small: ISize
  medium: ISize
  thumbnail: ISize
}

export interface ISize {
  ext: string
  url: string
  hash: string
  mime: string
  name: string
  path: any
  size: number
  width: number
  height: number
}
