import request from 'supertest';
import app from '../src/app';

describe('App', () => {

  test("It responds to the GET request", async () => {
    const response = await request(app).get("/");
    expect(response.statusCode).toBe(200);
    expect(response.text).toEqual("Hello World!");
  });
});
