import { protectionOfPersonalInformation } from '../data/protectionOfPersonalInformation'
import { occupationalSafetyAndHealth } from '../data/occupationalSafetyAndHealth'
import { mediation } from '../data/mediation'
import { hrSupport } from '../data/hrSupport'
import { crisisManagement } from '../data/crisisManagement'
import { economy } from '../data/economy'
import { hr } from '../data/hr'
import { legal } from '../data/legal'

export const getService = (serviceName: string) => {
  switch (serviceName) {
    case 'legal': {
      return legal
    }
    case 'hr': {
      return hr
    }
    case 'economy': {
      return economy
    }
    case 'crisisManagement': {
      return crisisManagement
    }
    case 'hrSupport': {
      return hrSupport
    }
    case 'mediation': {
      return mediation
    }
    case 'occupationalSafetyAndHealth': {
      return occupationalSafetyAndHealth
    }
    case 'protectionOfPersonalInformation': {
      return protectionOfPersonalInformation
    }
  }
}
