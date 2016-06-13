--- cson

layout: 'default'
nav: 
  opportunities:
    index:
      'Index':
        default: 'opportunities?0'
        'New':
          default : 'opportunities-new?0'
          'Quick Help': 'opportunities-new-(help-type)?0'
          'Error State': 'opportunities-new-(error-2)?0'
          'New Account': 'opportunities-new-new?0'
    record:
      'Front Matter':
        default: 'opportunity-overview?0'
        'Header': 'opportunity-overview?00'
        'Chevron':
          default: 'opportunity-overview?257'
          'In-Process': 'opportunity-overview-(chevron-pipelined)?257'
        'Tabs': 'opportunity-overview?371-a'
      'Overview':
        default: 'opportunity-overview?371-b'
        'General':
          default: 'opportunity-overview?441'
          'Owner Quick View': 'opportunity-overview-(general-quick-view)?441'
          'Edit': 'opportunity-overview-(general-edit)?441'
        'Notes & Attachments':
          default: 'opportunity-overview?441-b'
          'Filters':
            default: 'opportunity-overview-(notes-attachments-filter-options)?441'
            Notes: 'opportunity-overview-(notes-attachments-filter-notes)?441'
            Attachments: 'opportunity-overview-(notes-attachments-filter-attachments)?441'
          'Add Attachment (via Clip)':
            default: 'opportunity-overview-(notes-attachments-upload-choose)?441'
            'Confirm/Save': 'opportunity-overview-(notes-attachments-upload-confirm)?441'
          'Show More': 'opportunity-overview-(notes-attachments-show-more)?1438'
        'Customer':
          default: 'opportunity-overview?933'
          'Customer Account Quick View': 'opportunity-overview-(customer-quick-view)?933'
          'Edit': 'opportunity-overview-(customer-edit)?933'
        'Next Steps':
          default: 'opportunity-overview?1195'
          'Add Next': 'opportunity-overview-(next-steps-add-next)?1195'
          'History': 'opportunity-overview-(next-steps-history)?1195'
          'Edit':
            default: 'opportunity-overview-(next-steps-edit)?1195'
            'From Date': 'opportunity-overview-(next-steps-edit-from-date)?1195'
            'From Step':  'opportunity-overview-(next-steps-edit-from-step)?1195'
        'Units':
          default: 'opportunity-overview?1618'
          'Edit': 'opportunity-overview-(units-edit)?1618'
          'Add Unit(s)': 
            default: 'opportunity-overview-(units-add-unit)?1618'
            'Results': 'opportunity-overview-(units-add-results)?1618'
          'Section Help': 'opportunity-overview-(units-help)?1618'
          'Building Quick View': 'opportunity-overview-(units-quick-view)?1618'
        'People':
          default: 'opportunity-overview?2176'
          'Add Customer Contact':
            default: 'opportunity-overview-(people-add-customer-contact)?2176'
            'Create Contact': 
              default: 'opportunity-overview-(people-create-customer-contact)?2176'
              'Create Account': 'opportunity-overview-(people-create-customer-account)?2176'
          'Add Procuring Broker':
            default: 'opportunity-overview-(people-add-broker)?2176'
            'Create Broker':
              default: 'opportunity-overview-(people-create-broker)?2176'
              'Create Brokerage Firm': 'opportunity-overview-(people-create-brokerage-firm)?2176'
          'Add to Opportunity Team':
            default: 'opportunity-overview-(people-add)?2176'
            'New Team Member': 'opportunity-overview-(people-add-team-member)?2176'
      'Analysis': 'opportunity-analysis?0'
    contextualIndexes:
      'Contacts': 'contextual-index'
      'Brokers': 'contextual-index'
      'Team': 'contextual-index'
  brokers:
    record:
      'Details': 'broker-details'

---
