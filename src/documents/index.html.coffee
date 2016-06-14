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
          'Edit': 'opportunity-overview-(next-steps-edit)?1195'
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
          'Customer Contact':
            default: 'opportunity-overview?2208'
            'Add': 
              default: 'opportunity-overview-(people-add-customer-contact)?2208'
              'Create':
                default: 'opportunity-overview-(people-create-customer-contact)?2208'
                'Create Account': 'opportunity-overview-(people-create-customer-account)?2208'
            'Options': 'opportunity-overview-(people-options-customer)?2208'
          'Procuring Broker':
            default:  'opportunity-overview?2472'
            'Add':
              default: 'opportunity-overview-(people-add-broker)?2472'
              'Create':
                default: 'opportunity-overview-(people-create-broker)?2472'
                'Create Firm': 'opportunity-overview-(people-create-brokerage-firm)?2472'
            'Options': 'opportunity-overview-(people-options-broker)?2472'
          'Opportunity Team':
            default: 'opportunity-overview?2652'
            'Add': 'opportunity-overview-(people-add-team-member)?2652'
            'Options':
              default: 'opportunity-overview-(people-options-team)?2652'
              'Edit': 'opportunity-overview-(people-options-team-edit)?2652'
      'Overview - Minimal': 'overview-minimal'
      'Analysis': 'opportunity-analysis?0'
    contextualIndexes:
      'Contacts': 'contextual-index'
      'Brokers': 'contextual-index'
      'Team': 'contextual-index'
  brokers:
    record:
      'Details': 'broker-details'

---

