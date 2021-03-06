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



# 5 Implementing Services

* The Vote Service: A Multi-Get Interface, The Vote Interface,
  API Design Guidelines
* Models
* Rails: Rails 2.3 Routes, Rails 3 Routes, The Rails Controller
* Sinatra
* Rack




# 6 Connecting to Services

* Blocking I/O, Threading, and Parallelism:
  Asynchronous I/O, Multi-threading
* Typhoeus: Making Single Requests,
  Making Simultaneous Requests
* Multi-threaded Requests
* JRuby
* Logging for Performance

* Handling Error Conditions
* Testing and Mocking Service Calls
* Requests in Development
* Environments


# 7 Developing Service Client Libraries

* Packaging: Jeweler, Building and Deploying a Library
* Parsing Logic: The JSON Gem, YAJL Ruby,
Wrapping Parsed Results
* ActiveModel: Validations, Serialization
* Connection and Request Logic: Data Reads, Data Writes
* Mocks, Stubs, and Tests


# 8 Load Balancing and Caching

* Latency and Throughput
* Load Balancing: Load Balancing Algorithms, Implementing Load Balancing
* Caching with Memcached: The Memcached Client and ActiveRecord,
Time-Based Expiration, Manual Expiration, Generational Cache Keys
* HTTP Caching: Expiration-Based Caching, Validation-Based Caching,
  Implementing HTTP Caching



#  9 Parsing XML for Legacy Services

* XML: REXM, Nokogiri

* SOAP: Exploring Web Services with a WSDL File,
Making Requests


# 10 Security

* Authentication: HTTP Authentication, Signing Requests,
  SSL for Authentication, Authentication for Rails Applications
* Authorization, Firewalls, An RBAC Authorization Service
* Encryption: SSL for Encryption, Public/Private Key Pairs for Encryption

# 11 Messaging

* What Is Messaging?: Synchronous Versus Asynchronous Messaging,
Queues, Message Formats
* RabbitMQ and AMQP, Queues in RabbitMQ, Exchanges and Bindings,
 Durability and Persistence, Client Libraries

* Synchronous Reads, Asynchronous Writes: HTTP-Based Reads,
Messaging-Based Writes
* The CAP Theorem: Eventual Consistency, Designing Around Consistency
* Data Is the API: Operations on Fields, Modifications to Field Operations



# 12 Web Hooks and External Services

* Web Hooks: PubSubHubbub, Receiving Web Hooks, Providing Web Hooks,
Strategies for Dealing with Failure

* OAuth: Implementing an OAuth Consumer, Implementing an OAuth Provider 249

* Integrating with External Services: Consuming Data,
Pushing Data, The Request Lifecycle, Worker Processes

* Ensuring Performance and Reliability: Segregating Queues,
Metrics, Throttling and Quotas


# Appendix RESTful Primer


* Roy Fielding’s REST: Constraints, Architectural Elements,
Architectural Views

* REST and Resources: URIs and Addressability, Representations

* HTTP and the Uniform Interface:
HTTP Methods, HTTP Headers, HTTP Status Codes

