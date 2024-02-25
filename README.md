
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nzdata

<!-- badges: start -->
<!-- badges: end -->

nzdata is an API wrapper for data.govt.nz

## Installation

You can install the development version of nzdata from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("courtneyruss/nzdata")
```

## Example

This example requests data from dataset [“A-Z listing of all Whanganui
streets”](https://catalogue.data.govt.nz/dataset/whanganui-streets-a-z/resource/2f4e30a7-091f-4aed-b18f-4b21cc19e6b4)

``` r
library(nzdata)
streets <- load_data('2f4e30a7-091f-4aed-b18f-4b21cc19e6b4')
streets$result$records
#>     _id                   Abbot St
#> 1     1                   Acton Pl
#> 2     2            Addenbrooke Tce
#> 3     3          Ahu Ahu Valley Rd
#> 4     4                   Aiken Rd
#> 5     5                 Airport Rd
#> 6     6                 Akapuka Rd
#> 7     7                  Akatea St
#> 8     8                 Akepiro Pl
#> 9     9                   Alexa Pl
#> 10   10               Alexander St
#> 11   11                 Allison St
#> 12   12                    Alma Rd
#> 13   13                   Anaua St
#> 14   14                 Andrews Pl
#> 15   15                   Anson St
#> 16   16                  Antrim Pl
#> 17   17                  Anzac Pde
#> 18   18                 Aorangi Rd
#> 19   19                   Aotea St
#> 20   20                 Aranui Ave
#> 21   21                   Arawa Pl
#> 22   22                  Argyle St
#> 23   23               Armstrong Pl
#> 24   24                   Arran Pl
#> 25   25                 Arundel Pl
#> 26   26                Arundell Rd
#> 27   27                     Ash Pl
#> 28   28                 Ashton Tce
#> 29   29                  Atene Trk
#> 30   30                 Attrill Pl
#> 31   31                    Avon Pl
#> 32   32                  Awatea St
#> 33   33                 Babbage Pl
#> 34   34              Balgownie Ave
#> 35   35                Ballance St
#> 36   36              Balmoral Cres
#> 37   37                  Bamber St
#> 38   38                   Banks Pl
#> 39   39                 Barrack St
#> 40   40                 Bassett St
#> 41   41                 Bastia Ave
#> 42   42                   Bates St
#> 43   43                   Beach Rd
#> 44   44                 Beachcroft
#> 45   45              Beaumaris Ave
#> 46   46                Bedford Ave
#> 47   47                    Bell St
#> 48   48                 Belmont Rd
#> 49   49               Benefield St
#> 50   50                 Bennett St
#> 51   51                    Bens Pl
#> 52   52                 Bignell St
#> 53   53                   Birch Pl
#> 54   54                   Blair St
#> 55   55                Blueskin Rd
#> 56   56                   Blyth St
#> 57   57                  Bombay St
#> 58   58                 Borlase Pl
#> 59   59                   Boyd Ave
#> 60   60               Boydfield St
#> 61   61              Bradleys Line
#> 62   62                 Brassey Rd
#> 63   63                 Bristow St
#> 64   64              Broadhead Ave
#> 65   65              Broadview Hts
#> 66   66                Brooking St
#> 67   67                Brougham Pl
#> 68   68               Broughton St
#> 69   69                   Bruce Rd
#> 70   70               Brunswick Rd
#> 71   71                   Bryce St
#> 72   72              Buckingham Pl
#> 73   73                   Budge St
#> 74   74                 Bullock Dr
#> 75   75              Burma Hill Rd
#> 76   76                  Burmah St
#> 77   77                   Burns St
#> 78   78                 Burrell Rd
#> 79   79                 Burton Ave
#> 80   80                  Burtts Rd
#> 81   81              Bushy Park Rd
#> 82   82                    Bute Pl
#> 83   83                  Buxton Rd
#> 84   84                Caffray Ave
#> 85   85                  Caius Ave
#> 86   86               Cambridge St
#> 87   87               Camellia Ave
#> 88   88            Cameron Rd East
#> 89   89            Cameron Rd West
#> 90   90                Cameron Tce
#> 91   91                Campbell Rd
#> 92   92                Campbell St
#> 93   93                Carlton Ave
#> 94   94                  Carson St
#> 95   95                  Cathro Rd
#> 96   96                  Cavell Pl
#> 97   97               Caversham Rd
#> 98   98                   Cedar Dr
#> 99   99                Central Ave
#> 100 100                 Charles Cl
#> 101 101                 Chelsea Cl
#> 102 102                 Chester Rd
#> 103 103                Chittick Pl
#> 104 104                  Church Pl
#> 105 105             Churchill Cres
#> 106 106                 Churton St
#> 107 107                 Clapham Pl
#> 108 108               Clarkson Ave
#> 109 109                 College St
#> 110 110                 Collier Pl
#> 111 111             Collingwood St
#> 112 112                 Collins St
#> 113 113               Concord Line
#> 114 114                   Cooks St
#> 115 115                Copeland St
#> 116 116                Cornfoot St
#> 117 117                Cornwall Rd
#> 118 118               Cotswolds Cl
#> 119 119                Cracroft Dr
#> 120 120                   Creek Rd
#> 121 121                   Cross St
#> 122 122                 Cumbrae Pl
#> 123 123                  Currie Rd
#> 124 124                 Cypress Pl
#> 125 125                  D'Arcy Rd
#> 126 126                     Day Rd
#> 127 127                    Deem Pl
#> 128 128                  Delhi Ave
#> 129 129                   Denby Pl
#> 130 130                 Denlair Rd
#> 131 131                   Devon Rd
#> 132 132                   Diana Pl
#> 133 133               Dickens Lane
#> 134 134               Dickenson Rd
#> 135 135               Dickson Cres
#> 136 136                  Dorset Rd
#> 137 137                 Downes Ave
#> 138 138                  Drews Ave
#> 139 139                  Dublin St
#> 140 140                  Duigan St
#> 141 141                  Duncan St
#> 142 142                  Durham Rd
#> 143 143                   Durie St
#> 144 144              Durie Vale Rd
#> 145 145                  Dustin St
#> 146 146                   East Way
#> 147 147                 Eastown Rd
#> 148 148                 Eaton Cres
#> 149 149                    Eden Pl
#> 150 150           Edith Collier Dr
#> 151 151                 Edmonds Dr
#> 152 152                  Egmont St
#> 153 153                     Elm St
#> 154 154                 Emerson St
#> 155 155                    Erin Rd
#> 156 156                   Essex Pl
#> 157 157                Exeter Cres
#> 158 158                Falkland St
#> 159 159                 Faraday St
#> 160 160               Fergusson St
#> 161 161                   Field St
#> 162 162                 Fields Trk
#> 163 163                    Fife St
#> 164 164            Fitzherbert Ave
#> 165 165              Flemington Rd
#> 166 166                  Forres St
#> 167 167                     Fox Rd
#> 168 168                 Francis Rd
#> 169 169                  Fraser Pl
#> 170 170                 Fromont St
#> 171 171               G F Moore Dr
#> 172 172                 Garrett St
#> 173 173                  George St
#> 174 174               Georgetti Rd
#> 175 175                   Gerse St
#> 176 176               Gibbons Cres
#> 177 177                  Gibson St
#> 178 178                 Gilberd St
#> 179 179                Gilligan Cl
#> 180 180                 Gilmour St
#> 181 181               Glandwr Cres
#> 182 182                 Glasgow St
#> 183 183                   Glenn St
#> 184 184              Gloucester St
#> 185 185                Godwin Cres
#> 186 186               Goldsbury Pl
#> 187 187                Golf Vue Pl
#> 188 188               Gonville Ave
#> 189 189             Gordon Park Rd
#> 190 190                 Gorran Ave
#> 191 191                  Grange Rd
#> 192 192             Great North Rd
#> 193 193                    Grey St
#> 194 194               Gumtree Rise
#> 195 195                    Gunn St
#> 196 196                    Gurr Pl
#> 197 197                  Guyton St
#> 198 198                 Hackett St
#> 199 199              Hadfield Cres
#> 200 200                  Hakeke St
#> 201 201                   Hales Rd
#> 202 202                Halswell St
#> 203 203                 Hampton Pl
#> 204 204                 Handley Rd
#> 205 205                 Handley St
#> 206 206                   Hardy St
#> 207 207                  Harper St
#> 208 208                  Harris Pl
#> 209 209                  Harris Rd
#> 210 210                Harrison Rd
#> 211 211                Harrison St
#> 212 212            Hatrick St East
#> 213 213            Hatrick St West
#> 214 214                  Haunui Rd
#> 215 215                  Hawken Rd
#> 216 216                   Heads Rd
#> 217 217                    Heao Rd
#> 218 218                 Helmore St
#> 219 219                Hereford St
#> 220 220               Herschell St
#> 221 221                 Hewitts Rd
#> 222 222               Hillside Tce
#> 223 223                   Hinau St
#> 224 224                 Hinemoa St
#> 225 225                Hipango Tce
#> 226 226                   Hodge Pl
#> 227 227              Holdsworth Dr
#> 228 228                Holmwood Rd
#> 229 229                Holyoake St
#> 230 230                    Hood St
#> 231 231              Hori Kingi St
#> 232 232                    Huia St
#> 233 233                Hurworth Pl
#> 234 234             Hutchison Cres
#> 235 235                  Huxley Rd
#> 236 236                  Hylton St
#> 237 237                 Ikitara Rd
#> 238 238                   Imlay Pl
#> 239 239                   Indus St
#> 240 240                Ingestre St
#> 241 241                    Iris Pl
#> 242 242                 Iwiroa Tce
#> 243 243                 Jackson St
#> 244 244                   James Rd
#> 245 245                Jellicoe St
#> 246 246                    John St
#> 247 247                   Jones St
#> 248 248                Junction Rd
#> 249 249          Kai Iwi Valley Rd
#> 250 250               Kaikokopu Rd
#> 251 251               Kaimatira Rd
#> 252 252                  Kainui Rd
#> 253 253                 Kaitoke Rd
#> 254 254               Kaiwhaiki Rd
#> 255 255                    Kaka Pl
#> 256 256                  Kakaho Dr
#> 257 257                  Kamahi St
#> 258 258                Kapakapa Rd
#> 259 259                 Kapiti Tce
#> 260 260                  Karaka St
#> 261 261                  Karamu St
#> 262 262                  Karewa St
#> 263 263                  Karoro Rd
#> 264 264                   Karyn St
#> 265 265              Kauangaroa Rd
#> 266 266              Kauarapaoa Rd
#> 267 267         Kaukatea Valley Rd
#> 268 268                 Kaukore St
#> 269 269                   Kauri St
#> 270 270                Kawakawa St
#> 271 271               Kawatiri Ave
#> 272 272                   Kawau Pl
#> 273 273                     Kea Pl
#> 274 274                   Keith St
#> 275 275                  Kells Ave
#> 276 276                   Kelsi St
#> 277 277                  Kelvin St
#> 278 278                    Kemp St
#> 279 279                    Kent Rd
#> 280 280                    Kepa St
#> 281 281                  Kings Ave
#> 282 282               Kingston Way
#> 283 283                    Kirk St
#> 284 284               Kitchener St
#> 285 285                    Kiwi St
#> 286 286                Koatanui Rd
#> 287 287                  Konini St
#> 288 288             Koriniti Pa Rd
#> 289 289                Koromiko Rd
#> 290 290                  Kotare St
#> 291 291              Kotekiekie Rd
#> 292 292                  Kotuku St
#> 293 293                Koukoupo Rd
#> 294 294                  Kowhai St
#> 295 295                   Kuaka Pl
#> 296 296                  Kukuta Rd
#> 297 297                 Kumuiti Rd
#> 298 298                    Kupe Pl
#> 299 299                Kurapete Rd
#> 300 300                   Laird St
#> 301 301               Lancewood Pl
#> 302 302               Landguard Rd
#> 303 303              Leamington St
#> 304 304                     Lee St
#> 305 305               Leicester Pl
#> 306 306                 Lenihan St
#> 307 307                  Lewis Ave
#> 308 308                Liffiton St
#> 309 309                Lilybank Rd
#> 310 310                 Lincoln Rd
#> 311 311                   Linda Pl
#> 312 312               Lindsey Cres
#> 313 313             Lismore Forest
#> 314 314                 Lithgow Dr
#> 315 315               Liverpool St
#> 316 316             Livingstone Rd
#> 317 317                   Lloyd St
#> 318 318                  Loader Pl
#> 319 319                  London St
#> 320 320                Longacre Rd
#> 321 321               Longbeach Dr
#> 322 322                 Lowther St
#> 323 323                 Lucknow St
#> 324 324              Macintoshs Rd
#> 325 325            Mackintosh's Rd
#> 326 326                  Madras St
#> 327 327                Magnolia Cr
#> 328 328                   Mahoe Pl
#> 329 329                 Mahoney St
#> 330 330                   Maire St
#> 331 331                  Maketu St
#> 332 332       Makirikiri Valley Rd
#> 333 333       Mangaeturoa South Rd
#> 334 334              Mangahowai Rd
#> 335 335                 Mangaio Rd
#> 336 336             Mangaiteroa Rd
#> 337 337                Mangaiti Rd
#> 338 338               Mangamahu Rd
#> 339 339        Mangamahu Valley Rd
#> 340 340                Mangaone Rd
#> 341 341             Mangatipona Rd
#> 342 342           Mangatukituki Rd
#> 343 343            Mangawai Iti Rd
#> 344 344              Mangawhero Rd
#> 345 345                Mangoihe Rd
#> 346 346               Mangoihe Trk
#> 347 347                Mangotai Rd
#> 348 348              Mannington Rd
#> 349 349                  Manuka St
#> 350 350                   Maple Pl
#> 351 351                 Marahau Rd
#> 352 352                Marangai Rd
#> 353 353                   Maria Pl
#> 354 354                Marions Way
#> 355 355                  Market Pl
#> 356 356                 Marorau Rd
#> 357 357               Marshall Ave
#> 358 358                  Martin St
#> 359 359                Marybank Rd
#> 360 360                  Mason Tce
#> 361 361                 Masonic Dr
#> 362 362                  Massey St
#> 363 363               Matahiwi Trk
#> 364 364                   Matai St
#> 365 365           Matarawa Hill Rd
#> 366 366                Matarawa Rd
#> 367 367                Matarawa St
#> 368 368         Matarawa Valley Rd
#> 369 369                Matatara Rd
#> 370 370               Mathieson St
#> 371 371                  Matipo St
#> 372 372                   Mawae St
#> 373 373                Maxwell Ave
#> 374 374           Maxwell Cross Rd
#> 375 375         Maxwell Station Rd
#> 376 376                     May St
#> 377 377           Mcnabs Access Rd
#> 378 378                 Mcneill St
#> 379 379                   Meuli St
#> 380 380                    Mill Rd
#> 381 381                Millward St
#> 382 382                  Milton St
#> 383 383                    Miro St
#> 384 384                 Mission Rd
#> 385 385                Mitchell Rd
#> 386 386                Mitchell St
#> 387 387                  Moana Pde
#> 388 388                   Moana St
#> 389 389                 Mokonui Rd
#> 390 390                 Monowai Pl
#> 391 391              Montgomery Rd
#> 392 392                  Moore Ave
#> 393 393                   Moray Pl
#> 394 394                  Morgan St
#> 395 395                 Morgans Rd
#> 396 396                 Morikau Rd
#> 397 397                Morrison St
#> 398 398                 Mosston Rd
#> 399 399                 Moutere Is
#> 400 400                Moutoa Quay
#> 401 401                Mowhanau Dr
#> 402 402            Mt Humphries Rd
#> 403 403                 Mt View Rd
#> 404 404                    Muir St
#> 405 405                Mulligan St
#> 406 406                   Murch Pl
#> 407 407                  Murphy Rd
#> 408 408                  Murray St
#> 409 409                  Nathan St
#> 410 410                Naumai Cres
#> 411 411                  Nelson St
#> 412 412                   Nepia Rd
#> 413 413                  Newton Rd
#> 414 414                   Ngaio St
#> 415 415                Ngamatea Rd
#> 416 416                 Ngapuhi St
#> 417 417                 Ngarino Rd
#> 418 418          Ngatarua North Rd
#> 419 419          Ngatarua North Rd
#> 420 420                Ngatarua Rd
#> 421 421                 Ngaturi Rd
#> 422 422                 Niblett St
#> 423 423                  Nichol Pl
#> 424 424               Nicholson Dr
#> 425 425                   Nikau St
#> 426 426                    Nile St
#> 427 427                   Nixon St
#> 428 428                  No 1 Line
#> 429 429                  No 2 Line
#> 430 430                  No 3 Line
#> 431 431                 Norfolk Dr
#> 432 432        Nukumaru Station Rd
#> 433 433                 O'Leary Rd
#> 434 434                O'Neills Rd
#> 435 435                Oakland Ave
#> 436 436                Ohaumoko Rd
#> 437 437                Ohaumoku Rd
#> 438 438                   Ohotu Rd
#> 439 439                  Okirae Rd
#> 440 440                   Okoia Rd
#> 441 441             Old Fields Trk
#> 442 442            Old Parapara Rd
#> 443 443                   Omaru Rd
#> 444 444                   Omori Pl
#> 445 445                 Onetere Dr
#> 446 446                 Orchard Rd
#> 447 447              Oruakainga Rd
#> 448 448                  Otamoa Rd
#> 449 449               Otaranoho Rd
#> 450 450                 Otikoki Rd
#> 451 451           Ototoka Beach Rd
#> 452 452                 Owairua Rd
#> 453 453                    Owen St
#> 454 454                Owhakura Rd
#> 455 455                  Oxford Rd
#> 456 456                 Pacific Pl
#> 457 457                     Pah Rd
#> 458 458                Pakaraka Rd
#> 459 459                 Papaiti Rd
#> 460 460                 Paparoa Rd
#> 461 461              Parihauhau Rd
#> 462 462                 Parinui Rd
#> 463 463                    Park Pl
#> 464 464                Parkdale Dr
#> 465 465                 Parkes Ave
#> 466 466                   Paroa Rd
#> 467 467                 Parsons St
#> 468 468                  Patapu St
#> 469 469                Paterson St
#> 470 470                  Patete Pl
#> 471 471                   Pauls Rd
#> 472 472            Pauri Domain Rd
#> 473 473                   Pauri Rd
#> 474 474                  Peakes Rd
#> 475 475                   Peat Ave
#> 476 476                    Peat Pl
#> 477 477                    Peat St
#> 478 478                    Pehi St
#> 479 479                Pekapeka Rd
#> 480 480                  Perham Pl
#> 481 481                 Perrett Dr
#> 482 482                Pharazyn St
#> 483 483                Photinia Pl
#> 484 484                Pickwick Rd
#> 485 485        Pipiriki Raetihi Rd
#> 486 486                Pipiriki Rd
#> 487 487                Pitangi Trk
#> 488 488                    Pitt St
#> 489 489                 Plunket St
#> 490 490                Plymouth St
#> 491 491                   Poaka Pl
#> 492 492            Pohonuiatane Rd
#> 493 493             Pohonuitane Rd
#> 494 494            Pohutukawa Lane
#> 495 495                  Pokeka Rd
#> 496 496                  Polson Rd
#> 497 497                  Polson St
#> 498 498                 Porritt St
#> 499 499                  Portal St
#> 500 500                 Poutama Pl
#> 501 501                 Poutama Rd
#> 502 502                 Poutini St
#> 503 503                 Poynter Pl
#> 504 504                  Prince St
#> 505 505        Public Road Reserve
#> 506 506                Pukenamu Dr
#> 507 507                Pukerimu Rd
#> 508 508             Pungaharuru Pl
#> 509 509               Pungatawa Rd
#> 510 510                Puraroto Rd
#> 511 511                  Puriri St
#> 512 512                 Purnell St
#> 513 513                   Purua St
#> 514 514                  Putiki Dr
#> 515 515                   Queen St
#> 516 516                  Quick Ave
#> 517 517                   Raine St
#> 518 518                   Rakau Rd
#> 519 519                Rangiora Rd
#> 520 520                Rangiora St
#> 521 521         Rangitatau East Rd
#> 522 522         Rangitatau West Rd
#> 523 523              Rangitikei St
#> 524 524                Raorikia Rd
#> 525 525                 Rapanui Rd
#> 526 526                    Rata Rd
#> 527 527                    Rata St
#> 528 528                  Raupiu Rd
#> 529 529                   Raupo St
#> 530 530                 Rawhiti Pl
#> 531 531                    Rees St
#> 532 532             Richardsons Rd
#> 533 533                Richmond St
#> 534 534                   Ridge Rd
#> 535 535                 Ridgway St
#> 536 536                    Rimu St
#> 537 537                  Riripo Rd
#> 538 538              River Reserve
#> 539 539               Riverbank Rd
#> 540 540                Roberts Ave
#> 541 541                  Rodney St
#> 542 542                  Rogers St
#> 543 543                 Roimata Pl
#> 544 544               Rotherham St
#> 545 545               Rotokawau Dr
#> 546 546               Roundhill Rd
#> 547 547                 Ruapehu St
#> 548 548              Ruatangata Rd
#> 549 549                Ruratahi Rd
#> 550 550                    Ruru St
#> 551 551                 Russell St
#> 552 552                 Rutland St
#> 553 553              Salisbury Ave
#> 554 554               Sandcroft Dr
#> 555 555                 Sandy Hook
#> 556 556                 Sandy Lane
#> 557 557                Sarjeant St
#> 558 558                Saunders Pl
#> 559 559                Savage Cres
#> 560 560                Seafield Rd
#> 561 561                Seafront Rd
#> 562 562                  Seddon St
#> 563 563              Sedgebrook St
#> 564 564                Selwyn Cres
#> 565 565                  Sewell Rd
#> 566 566             Shakespeare Rd
#> 567 567               Sheffield Pl
#> 568 568                Sherwood Pl
#> 569 569                   Short St
#> 570 570                 Siceley Rd
#> 571 571                   Simon St
#> 572 572                 Simpson Rd
#> 573 573                  Smart Tce
#> 574 574                   Smith Rd
#> 575 575              Smithfield Rd
#> 576 576                Somerset Rd
#> 577 577                  Somme Pde
#> 578 578                 South Spit
#> 579 579                   Spier St
#> 580 580              Springvale Rd
#> 581 581                 Spurdle St
#> 582 582            St Georges Gate
#> 583 583               St Helens Pl
#> 584 584                 St Hill St
#> 585 585               St Johns Hts
#> 586 586              St Leonard St
#> 587 587              St Oswalds Dr
#> 588 588                Stafford St
#> 589 589                 Stanley Rd
#> 590 590                   Stark St
#> 591 591      State Highway 3 North
#> 592 592      State Highway 3 South
#> 593 593            State Highway 4
#> 594 594 State Highway Road Reserve
#> 595 595                 Station Rd
#> 596 596                 Stewart St
#> 597 597                   Stock Rd
#> 598 598                 Suffolk Dr
#> 599 599                 Sunset Pde
#> 600 600                  Surrey Rd
#> 601 601                   Suspence
#> 602 602                  Sussex Rd
#> 603 603                  Swiss Ave
#> 604 604                  Sydney Pl
#> 605 605                    Syme Rd
#> 606 606                  Taheke Rd
#> 607 607               Tahunaroa Rd
#> 608 608                  Tainui St
#> 609 609               Takarangi St
#> 610 610                  Talbot St
#> 611 611                Tangahoe Rd
#> 612 612              Tangarakau Rd
#> 613 613                   Tangi St
#> 614 614                 Tanguru St
#> 615 615                Taranaki St
#> 616 616                  Tarata St
#> 617 617               Tasman Views
#> 618 618                 Taumata Rd
#> 619 619            Taumatamahoe Rd
#> 620 620                 Taunoka Rd
#> 621 621                 Taupata St
#> 622 622                 Taupo Quay
#> 623 623                    Tawa St
#> 624 624                Tawapiko Rd
#> 625 625                 Tawhero St
#> 626 626                     Tay St
#> 627 627                Tayforth Rd
#> 628 628                  Taylor Rd
#> 629 629                  Taylor St
#> 630 630                  Te Hue Rd
#> 631 631                Te Komai Rd
#> 632 632                 Te Mana Pl
#> 633 633                 Te Rimu Rd
#> 634 634                   Tenga St
#> 635 635                Tennyson St
#> 636 636                 Terrace St
#> 637 637                Thatcher St
#> 638 638               Thompsons Rd
#> 639 639                   Tieke Rd
#> 640 640                    Tiki St
#> 641 641                 Tinirau St
#> 642 642                   Tipai St
#> 643 643               Tirimoana Pl
#> 644 644                  Titoki St
#> 645 645                  Titter Pl
#> 646 646                     Tod St
#> 647 647                     Toi St
#> 648 648           Tokomaru East Rd
#> 649 649           Tokomaru West Rd
#> 650 650               Tongariro St
#> 651 651                   Tonks Rd
#> 652 652                    Toro St
#> 653 653                  Totara St
#> 654 654                 Tower Cres
#> 655 655               Trafalgar Pl
#> 656 656               Treadwell St
#> 657 657                Tregarth St
#> 658 658                Tregenna St
#> 659 659                Treweek Ave
#> 660 660                     Tui Pl
#> 661 661                 Tulloch St
#> 662 662         Turakina Valley Rd
#> 663 663                  Turere Pl
#> 664 664                   Turoa Rd
#> 665 665                 Tyndall St
#> 666 666                 Union Line
#> 667 667                Urquhart St
#> 668 668               Victoria Ave
#> 669 669                 Victory Pl
#> 670 670               Virginia Hts
#> 671 671                Virginia Rd
#> 672 672                 Waharua Pl
#> 673 673            Waiinu Beach Rd
#> 674 674                 Waikupa Rd
#> 675 675            Wainui Beach Rd
#> 676 676                 Waipapa Rd
#> 677 677                 Waipuna Rd
#> 678 678                 Waireka Rd
#> 679 679                 Wairere Rd
#> 680 680              Waitahanui Rd
#> 681 681                  Waitai St
#> 682 682               Waitangi Pde
#> 683 683               Waitotara Rd
#> 684 684                 Waitote St
#> 685 685               Wakefield St
#> 686 686                  Walker Pl
#> 687 687             Walter Nash Pl
#> 688 688                  Wanaka St
#> 689 689                    Ward St
#> 690 690                ward street
#> 691 691              Warrengate Rd
#> 692 692                 Warwick Pl
#> 693 693               Watershed Rd
#> 694 694                  Watkin St
#> 695 695        Watt Livingstone Rd
#> 696 696                    Watt St
#> 697 697                    Webb Rd
#> 698 698                 Webster Pl
#> 699 699                    Weka St
#> 700 700                 Wembley Pl
#> 701 701                   West Way
#> 702 702             Westbourne Tce
#> 703 703               Western Line
#> 704 704                Westmere Rd
#> 705 705        Westmere Station Rd
#> 706 706            Whakaihuwaka Rd
#> 707 707         Whangaehu Beach Rd
#> 708 708         Whangaehu Hotel Rd
#> 709 709        Whangaehu Valley Rd
#> 710 710            Whangamomona Rd
#> 711 711         Whanganui District
#> 712 712            Whanganui River
#> 713 713         Whanganui River Rd
#> 714 714         Whanganui River Rd
#> 715 715                   Wharf St
#> 716 716                   White St
#> 717 717               Wicksteed Rd
#> 718 718               Wicksteed St
#> 719 719              Wicksteed Tce
#> 720 720               Wikitoria Rd
#> 721 721                  Wilkie St
#> 722 722                 William Rd
#> 723 723                  Willis St
#> 724 724                  Willow Pl
#> 725 725                  Wilson St
#> 726 726                Windsor Tce
#> 727 727              Wordsworth St
#> 728 728                    York St
#> 729 729                   Young St
#> 730 730                  Duncan St
#> 731 731                    Pukeroa
#> 732 732                  Kowhai St
```
