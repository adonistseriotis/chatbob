import Axios from 'axios';

const axiosInstance = Axios.create({
    baseURL: 'https://5656ba645f76.ngrok.io/',
    timeout: 5000,
    headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
    }
});

export async function run () {
    const response = await axiosInstance
        .get('/runquestionnaire')
        .then(response => {
            return response
        })
        .catch(error => {
            throw error
        })
    console.log(response)
    return response
}

export async function getquestion() {
    const response = await axiosInstance
        .post('/getquestion')
        .then(response => {
            return response.question
        })
        .catch(error => {
            throw error
        })
    return response;
}

export async function answer(answer) {
    const response = await axiosInstance
    .post('/answer', { 'answer':answer })
    .then(response => {
        return response
    })
    .catch(error => {
        throw error
    })
    return response
}


export default axiosInstance;