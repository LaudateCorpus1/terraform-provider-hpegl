FROM golang:1.17.6
WORKDIR /app
COPY . .
RUN go mod tidy
RUN go mod vendor
ENV HPEGL_IAM_TOKEN=${{secrets.HPEGL_IAM_TOKEN}} 
ENV TF_ACC_CMP_SUBJECT=${{secrets.CMP_SUBJECT}}
