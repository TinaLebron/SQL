--create new login in database for schema
create login JJ
with password  = '12345'

--create a user in a database for a given login
use LotteryDB2
create user JJ
from login JJ


