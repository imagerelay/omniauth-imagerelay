# OmniAuth Image Relay

Image Relay is a cloud based Online Digital Asset Management application. 

This gem contains the official Image Relay, [http://imagerelay.com](http://imagerelay.com), strategy for OmniAuth.

For more details about the Image Relay API including documentation, and application credentials please contact support@imagerelay.com.

## Basic Usage

    use OmniAuth::Builder do
      provider "imagerelay", ENV['IMAGERELAY_CLIENT_ID'], ENV['IMAGERELAY_SECRET']
    end

## Supported Flows

Supports the server flow as described in the draft spec at [http://tools.ietf.org/html/draft-ietf-oauth-v2-10](http://tools.ietf.org/html/draft-ietf-oauth-v2-10).

## Ruby

Tested with the following Ruby versions:

- MRI 1.9.3

## License

Copyright (c) 2013 by Image Relay, LLC.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

