# created to have path to images hosted on Amazon s3 for heroku
Paperclip::Attachment.default_options[:url] = 'movie-review.s3.amazonaws.com'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
