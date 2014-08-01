`import DS from 'ember-data';`

ApplicationAdapter = DS.RESTAdapter.extend
  namespace: 'api/v1'

`export default ApplicationAdapter;`
