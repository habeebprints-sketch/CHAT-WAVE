import { initializeApp } from "firebase/app";
import { 
  getAuth,
  createUserWithEmailAndPassword,
  signInWithEmailAndPassword
} from "firebase/auth";

import {
  getFirestore,
  collection,
  addDoc,
  onSnapshot,
  query,
  orderBy,
  serverTimestamp
} from "firebase/firestore";

// your config
const firebaseConfig = {
  apiKey: "AIzaSyDxvSOTQBsy3Kl-pP34MxUDdGWsmUeiMyw",
  authDomain: "chat-wave-711fc.firebaseapp.com",
  projectId: "chat-wave-711fc",
  storageBucket: "chat-wave-711fc.firebasestorage.app",
  messagingSenderId: "556719208115",
  appId: "1:556719208115:web:47cb316cde725c134422c6"
};

// start firebase
const app = initializeApp(firebaseConfig);

// turn on services
const auth = getAuth(app);
const db = getFirestore(app);

// make available outside
export {
  auth,
  db,
  createUserWithEmailAndPassword,
  signInWithEmailAndPassword,
  collection,
  addDoc,
  onSnapshot,
  query,
  orderBy,
  serverTimestamp
};
