# Service Oriented Design with Ruby

# Ruby, Rails, Rack

## many ways to win

~~~~
@@@ruby
def foo
  puts 'bar'
end
~~~~

# 1 Implementing and Consuming Your First Service

* What’s a Service?
* Service Requirements
* The Ruby Tool Set: Sinatra, ActiveRecord, JSON, Typhoeus, Rspec

* The User Service Implementation: Using GET, POSTing a User,
PUTing a User, Deleting a User, Verifying a User

* Implementing the Client Library, Finding a User, Creating a User,
 Updating a User, Destroying a User, Verifying a User

* Putting It All Together


# 2 An Introduction to Service-Oriented Design

* Use of Service-Oriented Design in the Wild

* Service-Oriented Design Versus Service-Oriented Architecture Versus
RESTful-Oriented Architecture

* Making the Case for Service-Oriented Design

  * Isolation, Robustness, Scalability, Agility, Interoperability, Reuse


# 3 Case Study: Social Feed Reader

* A Typical Rails Application

* The Rails Social Feed Reader Application,
Features, Current Setup

* Converting to Services: Segmenting into Services,
Breaking Up the Application into Services

# 4 Service and API Design

* Partitioning Functionality into Separate Services: Partitioning on
Iteration Speed 60 Partitioning on Logical Function 61 Partitioning on
Read/Write Frequencies 62 Partitioning on Join Frequency

* Versioning Services
Including a Version in URIs
Using Accept Headers for Versioning

* URIs and Interface Design

* Successful Responses
HTTP Status Codes 68 HTTP Caching
Successful Response Bodies

*  Error Responses
HTTP Status Codes
Error Response Bodies

* Handling Joins
Storing References
Joining at the Highest Level 74 Beware of Call Depth

* API Complexity: Atomic APIs, Multi-Gets, Multiple Models

* Conclusion


# 5 Implementing Services

* The Vote Service:
A Multi-Get Interface 81 The Vote Interface 82 API Design Guidelines


* Models

* Rails:
Rails 2.3 Routes 88 Rails 3 Routes 89 The Rails Controller

* Sinatra

* Rack

* Conclusion




# 6 Connecting to Services 107

* Blocking I/O, Threading, and Parallelism:
  Asynchronous I/O, Multi-threading
* Typhoeus: Making Single Requests,
  Making Simultaneous Requests
* Multi-threaded Requests
* JRuby
* Logging for Performance



#  7 Developing Service Client Libraries

Handling Error Conditions 118
Testing and Mocking Service Calls 119 Requests in Development
Environments 121 Conclusion 121


# 7 Developing Service Client Libraries

* Packaging: Jeweler, Building and Deploying a Library
* Parsing Logic: The JSON Gem, YAJL Ruby,
Wrapping Parsed Results
* ActiveModel: Validations, Serialization
* Connection and Request Logic: Data Reads, Data Writes
* Mocks, Stubs, and Tests


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

* XML: 167
REXML 170
Nokogiri 174

* SOAP: 177
Exploring Web Services with a WSDL File
Making Requests


# 10 Security 185

Authentication 185
HTTP Authentication 186
Signing Requests 187
SSL for Authentication 198 Authentication for Rails Applications 199
Authorization 201 Firewalls 201
An RBAC Authorization Service 203 Encryption 209
SSL for Encryption 210

Public/Private Key Pairs for Encryption 210 Conclusion 214

# 11 Messaging 215

What Is Messaging? 215
Synchronous Versus Asynchronous Messaging 216 Queues 217
Message Formats 217
RabbitMQ and AMQP 217 Queues in RabbitMQ 218
Exchanges and Bindings Durability and Persistence 223 Client Libraries

Synchronous Reads, Asynchronous Writes 227 HTTP-Based Reads 227
Messaging-Based Writes 227 The CAP Theorem 230
Eventual Consistency 231 Designing Around Consistency 232


Data Is the API 234
Operations on Fields 234 Modifications to Field Operations 235
Conclusion 236


# 12 Web Hooks and External Services 237

* Web Hooks 238 PubSubHubbub 239
Receiving Web Hooks 240
Providing Web Hooks 242
Strategies for Dealing with Failure 244

* OAuth 245
Implementing an OAuth Consumer 246 Implementing an OAuth Provider 249

* Integrating with External Services 251 Consuming Data 251
Pushing Data 253
The Request Lifecycle 254 Worker Processes 254

* Ensuring Performance and Reliability 258 Segregating Queues 259
Metrics 259
Throttling and Quotas 260

* Conclusion 261


# Appendix RESTful Primer 263


* Roy Fielding’s REST 263 Constraints 264
Architectural Elements 264
Architectural Views 265

* REST and Resources 265
URIs and Addressability 266
Representations 267

* HTTP and the Uniform Interface,
HTTP Methods, HTTP Headers, HTTP Status Codes

* Conclusion
