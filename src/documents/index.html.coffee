--- cson

layout: 'default'
nav: 
  opportunities:
    index:
      'Index':
        default: 'opportunities'
        'New':
          default : 'opportunities-new'
          'Quick Help': 'opportunities-new-(help-type)'
          'Error State': 'opportunities-new-(error-2)'
          'New Account': 'opportunities-new-new'
    record:
      'Front Matter':
        default: 'opportunity-overview'
        'Header': 'opportunity-overview?0'
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
          'Filters': 'opportunity-overview-(notes-attachments-filter-options)?441'
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
          'Add Unit(s)': 'opportunity-overview-(units-add-unit)?1618'
          'Section Help': 'opportunity-overview-(units-help)?1618'
          'Building Quick View': 'opportunity-overview-(units-quick-view)?1618'
      'Analysis': 'opportunity-analysis'
    contactsCustomer:
      'Index': 'opportunity-contacts-(customer)'
    contactsBroker:
      'Index': 'opportunity-contacts-(broker)'
    contactsTeam:
      'Index': 'opportunity-contacts-(team)'
  brokers:
    record:
      'Details': 'broker-details'

---
