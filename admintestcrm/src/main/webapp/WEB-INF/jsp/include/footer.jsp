      <footer>
         <div class="footer-wrap">
            <div class="container first_class">
               <div class="row">
                  <div class="col-md-4 col-sm-6">
                     <h3>BE THE FIRST TO KNOW</h3>
                     <p>Attend the Best Flight with enthusiasm. We provided each and every time
                     </p>
                  </div>
                  <div class="col-md-4 col-sm-6">
                     <form class="newsletter">
                        <input type="text" placeholder="Email Address"> 
                        <button class="newsletter_submit_btn" type="submit"><i class="fa fa-paper-plane"></i></button>  
                     </form>
                  </div>
                  <div class="col-md-4 col-sm-6">
                     <div class="col-md-12">
                        <div class="standard_social_links">
                           <div>
                              <li class="round-btn btn-facebook"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                              <li class="round-btn btn-linkedin"><a href="#"><i class="fab fa-linkedin-in" aria-hidden="true"></i></a></li>
                              <li class="round-btn btn-twitter"><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                              <li class="round-btn btn-instagram"><a href="#"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                              <!-- <li class="round-btn btn-whatsapp"><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li> -->
                              <li class="round-btn btn-envelop"><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a></li>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="second_class">
               <div class="container second_class_bdr">
                  <div class="row">
                     <div class="col-md-4 col-sm-6">
                        <div class="footer-logo"><img src="/resources/images/logo.png" alt="logo"  height="35" />
                        </div>
                        <p>Are you tired of constantly working for a significant part of the year? Well, if you haven't given a break to yourself while working hard in your job, this is the right time for you to refresh yourself.</p>
                     </div>
                     <div class="col-md-2 col-sm-6">
                        <h3>Quick  LInks</h3>
                        <ul class="footer-links">
                           <li><a href="/">Home</a></li>
                           <li><a href="/blog">Blog</a></li>
                           <li><a href="/article">Article</a></li>
                           <li><a href="/about-us">About Us</a></li>
                        </ul>
                     </div>
                     <div class="col-md-3 col-sm-6">
                        <h3>OUR SERVICES</h3>
                        <ul class="footer-category">
                           <li><a href="/contact-us">Contact Us</a></li>
                           <li><a href="/sitemap">Sitemap</a></li>
                           <li><a href="/privacy-policy" target="_blank">Privacy Policy</a></li>
                           <li><a href="/terms-conditions" target="_blank">Terms &amp; Conditions</a></li>
                        </ul>
                        <div class="clearfix"></div>
                     </div>
                     <div class="col-md-3 col-sm-6">
                        <h3>Connect With Us</h3>
                        <ul class="footer-links">
                           <li class="clour"><i class="fa fa-map-marker" aria-hidden="true"></i> <span>301 B, St George, UT 84770, USA</span></li>
                           <li><a href="mailto:support@justlastdeal.com"><i class="fa fa-envelope-o" aria-hidden="true"></i> support@justlastdeal.com</a></li>
                           <li><a href="tel:+1-802-452-4525">+1-802-452-4525</a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="container-fluid">
                  <div class="copyright"> Copyright 2019 | All Rights Reserved by TRIEDGE Solutions Pvt. Ltd.</div>
               </div>
            </div>
         </div>
      </footer>
       <script>
         $(document).ready(function(){
         let searchInput = document.querySelector('.search-input');
         searchInput.addEventListener('keyup', search);
         let titles = document.querySelectorAll('.main .title');
         let searchTerm = '';
         let tit = '';
         
         function search(e) {
         searchTerm = e.target.value.toLowerCase();
         
         titles.forEach((title) => {
           tit = title.textContent.toLowerCase();
           tit.includes(searchTerm) ? title.style.display = 'block' : title.style.display = 'none';
         });
         }
         });
      </script>