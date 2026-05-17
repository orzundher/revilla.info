import * as THREE from 'three';
import { GLTFLoader } from 'three/addons/loaders/GLTFLoader.js';
import { readFileSync } from 'fs';

const buf = readFileSync('./public/assets/scene/scene.glb');
const loader = new GLTFLoader();
loader.parse(buf.buffer.slice(buf.byteOffset, buf.byteOffset + buf.byteLength), '', (gltf) => {
  const box = new THREE.Box3().setFromObject(gltf.scene);
  const center = box.getCenter(new THREE.Vector3());
  const size = box.getSize(new THREE.Vector3());
  console.log('min  :', box.min.x.toFixed(4), box.min.y.toFixed(4), box.min.z.toFixed(4));
  console.log('max  :', box.max.x.toFixed(4), box.max.y.toFixed(4), box.max.z.toFixed(4));
  console.log('size :', size.x.toFixed(4), size.y.toFixed(4), size.z.toFixed(4));
  console.log('center:', center.x.toFixed(4), center.y.toFixed(4), center.z.toFixed(4));
}, (err) => console.error(err));
