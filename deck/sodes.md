# Service Oriented Design with Ruby

# Ruby, Rails, Rack

## many ways to win

~~~~
@@@ruby
def foo
  puts 'bar'
end
~~~~

# 1 Implementing and Consuming Your First Service 1

* What’s a Service?
* Service Requirements
* The Ruby Tool Set

  * Sinatra
  * ActiveRecord
  * JSON
  * Typhoeus
  * Rspec

* The User Service Implementation
 Using GET 6
POSTing a User 11 PUTing a User 13 Deleting a User 15 Verifying a User


* Implementing the Client Library 18 Finding a User 18
 Creating a User Updating a User Destroying a User 24 Verifying a User
24


* Putting It All Together
* Conclusion



# 2 An Introduction to Service-Oriented Design 27

Use of Service-Oriented Design in the Wild 27
Service-Oriented Design Versus Service-Oriented Architecture Versus
RESTful-Oriented Architecture 28
Making the Case for Service-Oriented Design 29
Isolation 30 Robustness 34 Scalability 35 Agility 36 Interoperability 37
Reuse 38
Conclusion 38


# 3 Case Study: Social Feed Reader 41

A Typical Rails Application 41
The Rails Social Feed Reader Application 45
Features 46
Current Setup 46 Converting to Services 54
Segmenting into Services 54
Breaking Up the Application into Services 54 Conclusion 58

# 4 Service and API Design 59

Partitioning Functionality into Separate Services 59 Partitioning on
Iteration Speed 60 Partitioning on Logical Function 61 Partitioning on
Read/Write Frequencies 62 Partitioning on Join Frequency 63
Versioning Services 64
Including a Version in URIs 64
Using Accept Headers for Versioning 65
URIs and Interface Design 66 Successful Responses 68
HTTP Status Codes 68 HTTP Caching 69
Successful Response Bodies 70
Contents
ix
  Error Responses 72
HTTP Status Codes 72
Error Response Bodies Handling Joins 73
72
Storing References 73
Joining at the Highest Level 74 Beware of Call Depth 75
API Complexity 75 Atomic APIs 76
Multi-Gets 76
Multiple Models 77 Conclusion 78


# 5 Implementing Services 79

The Vote Service 79
A Multi-Get Interface 81 The Vote Interface 82 API Design Guidelines
Models 86 Rails 88
Rails 2.3 Routes 88 Rails 3 Routes 89 The Rails Controller
Sinatra 95
Rack 100 Conclusion 106
85
90


# 6 Connecting to Services 107

Blocking I/O, Threading, and Parallelism Asynchronous I/O 108
Multi-threading 108 Typhoeus 109
Making Single Requests 109
107
Making Simultaneous Requests 111 Multi-threaded Requests 113
JRuby 115
Logging for Performance 117
x
Contents


#  7 Developing Service Client Libraries

Handling Error Conditions 118
Testing and Mocking Service Calls 119 Requests in Development
Environments 121 Conclusion 121
Developing Service Client Libraries 123
Packaging 123 Jeweler 124
Building and Deploying a Library 127 Parsing Logic 127
The JSON Gem 128
YAJL Ruby 129
Wrapping Parsed Results 130
ActiveModel 132 Validations 132
Serialization 134 Connection and Request Logic 136


Data Reads 136
Data Writes 142 Mocks, Stubs, and Tests 143 Conclusion 146

# 8 Load Balancing and Caching

Latency and Throughput 147 Load Balancing 148
147
Load Balancing Algorithms 148
Implementing Load Balancing 152 Caching with Memcached 155
The Memcached Client and ActiveRecord 156 Time-Based Expiration 158
Manual Expiration 159
Generational Cache Keys
HTTP Caching 162
Expiration-Based Caching 162 Validation-Based Caching 163 Implementing
HTTP Caching 165
Conclusion 166



#  9 Parsing XML for Legacy Services 167

XML 167
REXML 170
Nokogiri 174 SOAP 177
Exploring Web Services with a WSDL File
Making Requests 180 Conclusion 184


# 10 Security 185

Authentication 185
HTTP Authentication 186
Signing Requests 187
SSL for Authentication 198 Authentication for Rails Applications 199
Authorization 201 Firewalls 201
An RBAC Authorization Service 203 Encryption 209
SSL for Encryption 210
177
Public/Private Key Pairs for Encryption 210 Conclusion 214

# 11 Messaging 215

What Is Messaging? 215
Synchronous Versus Asynchronous Messaging 216 Queues 217
Message Formats 217
RabbitMQ and AMQP 217 Queues in RabbitMQ 218
Exchanges and Bindings Durability and Persistence 223 Client Libraries
224
Synchronous Reads, Asynchronous Writes 227 HTTP-Based Reads 227
Messaging-Based Writes 227 The CAP Theorem 230
Eventual Consistency 231 Designing Around Consistency 232
218
xii
Contents
Data Is the API 234
Operations on Fields 234 Modifications to Field Operations 235
Conclusion 236


# 12 Web Hooks and External Services 237

Web Hooks 238 PubSubHubbub 239
Receiving Web Hooks 240
Providing Web Hooks 242
Strategies for Dealing with Failure 244
OAuth 245
Implementing an OAuth Consumer 246 Implementing an OAuth Provider 249
Integrating with External Services 251 Consuming Data 251
Pushing Data 253
The Request Lifecycle 254 Worker Processes 254
Ensuring Performance and Reliability 258 Segregating Queues 259
Metrics 259
Throttling and Quotas 260 Conclusion 261


# Appendix RESTful Primer 263


Roy Fielding’s REST 263 Constraints 264
Architectural Elements 264
Architectural Views 265 REST and Resources 265
URIs and Addressability 266
Representations 267
HTTP and the Uniform Interface 268
HTTP Methods 268 HTTP Headers 271 HTTP Status Codes 274
Conclusion 275
Index 277
