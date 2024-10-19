import dotenv from 'dotenv';
import createServer from './utils/server';

dotenv.config();

export const app = createServer();
const port = process.env.PORT || 8000;

console.log({
  database: process.env.POSTGRES_DB,
  host: process.env.POSTGRES_HOST,
  user: process.env.POSTGRES_USER,
  password: String(process.env.POSTGRES_PASSWORD),
  port: parseInt(process.env.POSTGRES_PORT || '5432'),
  max: 10,
});

console.log('GODAVS ANDREAS! :D');
console.log('GODAVS OWAIS! :D');

console.log(process.env.PGUSER);

async function main() {
  app.listen(port, () => {
    console.log(`Server is listening on port http://localhost:${port}`);
  });
}

main().then(() => {});
