import { createStore, applyMiddleware } from 'redux';
import thunk from 'redux-thunk';
improt reducers from '../reducers';

const middleWare = [thunk];

const createStoreWithMiddleware = applyMiddleware(...middleWare)(createStore);

const store = createStoreWithMiddleware(reducers);

export default store;