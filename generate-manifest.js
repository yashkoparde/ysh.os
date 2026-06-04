import fs from 'fs';
import path from 'path';

const publicDir = path.join(process.cwd(), 'public');

if (!fs.existsSync(publicDir)) {
  fs.mkdirSync(publicDir);
}

const files = fs.readdirSync(publicDir).filter(file => {
    return fs.statSync(path.join(publicDir, file)).isFile() && 
           (file.endsWith('.c') || file.endsWith('.cpp') || file.endsWith('.py'));
});

fs.writeFileSync(path.join(publicDir, 'files.json'), JSON.stringify({ files }));
console.log('Generated public/files.json with:', files);
