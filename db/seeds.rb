# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

companies = ['Monterail, Inc.', 'Ostrzy Entertainment', 'ACME', 'Company X', 'Big Company 1',
             'TT Internet', 'SB Komputery', 'BP Biznes', 'KT Koty', 'MS Szpadel', 'Microsoft',
             'Hugehard', 'Comcast']

companies.each do |company|
  Company.create(name: company)
end


categories = ['Client','Internal','Delegation','Other','Negligible']

categories.each do |category|
  Category.create(name: category)
end

Operation.create!(invoice_num: "D8834", invoice_date: "01-06-2015", operation_date: "01-06-2015", amount: "210862.48", reporter: "Miss Zola Hyatt", notes: "Assumenda nobis sint nihil consectetur praesentium.Unde molestiae repellat animi assumenda.", status: "rejected", kind: "negligible", company_id: 1, category_ids: [1, 3, 5])
Operation.create!(invoice_num: "DB3963", invoice_date: "02-06-2015", operation_date: "02-06-2015", amount: "210862.48", reporter: "Miss Zola Hyatt", notes: "Assumenda nobis sint nihil consectetur praesentium. Unde molestiae repellat animi assumenda.", status: "rejected", kind: "negligible", company_id: 1, category_ids: [1,3]) 
Operation.create!(invoice_num: "DB15428", invoice_date: "02-06-2015", operation_date: "02-06-2015", amount: "216916.6", reporter: "Elizabeth Emard", notes: "Ut non dolorem quae ad est in. Consequatur dolor eveniet eos explicabo est eaque voluptatum.", status: "rejected", kind: "client", company_id: 3, category_ids: [2, 4, 5]) 
Operation.create!(invoice_num: "DS37753", invoice_date: "02-06-2015", operation_date: "02-06-2015", amount: "5491.15", reporter: "Abelardo Wehner", notes: "Quas quibusdam quo molestiae doloribus ipsum sed.", status: "other", kind: "negligible", company_id: 4, category_ids: [4,5]) 
Operation.create!(invoice_num: "DW68785", invoice_date: "02-06-2015", operation_date: "02-06-2015", amount: "213217.41", reporter: "Miss Breanne Bahringer", notes: "Ut fugit nostrum doloribus hic.", status: "rejected", kind: "other", company_id: 2, category_ids: [5]) 
Operation.create!(invoice_num: "DO61568", invoice_date: "03-06-2015", operation_date: "03-06-2015", amount: "211252.73", reporter: "Sylvester Monahan", notes: "Enim ducimus atque rem hic. Et corporis illum id amet eum. A quia temporibus.", status: "rejected", kind: "internal", company_id: 6) 
Operation.create!(invoice_num: "DA28999", invoice_date: "03-06-2015", operation_date: "03-06-2015", amount: "6411.38", reporter: "Aubrey Sauer", notes: "Expedita non veniam ea repellendus.", status: "accepted", kind: "Client", company_id: 1, category_ids: [5]) 
Operation.create!(invoice_num: "DC9193", invoice_date: "04-06-2015", operation_date: "04-06-2015", amount: "211872.61", reporter: "Mr. Herminio Hegmann", notes: "Cumque et voluptas.", status: "accepted", kind: "important", company_id: 13, category_ids: [4]) 
Operation.create!(invoice_num: "DM64524", invoice_date: "04-06-2015", operation_date: "04-06-2015", amount: "211016.70", reporter: "Jean Schuster", notes: "Repellat voluptate omnis quaerat.", status: "accepted", kind: "other", company_id: 11, category_ids: [1]) 
Operation.create!(invoice_num: "DC68494", invoice_date: "04-06-2015", operation_date: "04-06-2015", amount: "218068.43", reporter: "Jalen Spencer", notes: "Voluptas qui et error corporis quis repellat.", status: "other", kind: "delegation", company_id: 9, category_ids: [3,4]) 
Operation.create!(invoice_num: "DM35458", invoice_date: "04-06-2015", operation_date: "04-06-2015", amount: "5128.93", reporter: "Larue Nienow", notes: "Et quis in aspernatur aperiam.", status: "other", kind: "Delegation", company_id: 7, category_ids: [3,5]) 
Operation.create!(invoice_num: "DB48280", invoice_date: "04-06-2015", operation_date: "04-06-2015", amount: "213362.17", reporter: "Eve Mayer", notes: "Voluptatibus reiciendis odio.", status: "rejected", kind: "Delegation", company_id: 5, category_ids: [1]) 
Operation.create!(invoice_num: "DW12974", invoice_date: "05-06-2015", operation_date: "05-06-2015", amount: "217206.75", reporter: "Laron Treutel", notes: "Assumenda est iusto.", status: "other", kind: "Internal", company_id: 3) 
Operation.create!(invoice_num: "DA77801", invoice_date: "05-06-2015", operation_date: "05-06-2015", amount: "211848.71", reporter: "Anna Torphy", notes: "Expedita ut voluptatem itaque sunt ut ipsa.", status: "rejected", kind: "important", company_id: 1) 
Operation.create!(invoice_num: "DS5403", invoice_date: "05-06-2015", operation_date: "05-06-2015", amount: "22328.8", reporter: "Merritt McClure", notes: "Delectus esse fuga ut dolore velit est dolorem.", status: "accepted", kind: "internal", company_id: 2) 
Operation.create!(invoice_num: "DT54191", invoice_date: "03-06-2015", operation_date: "03-06-2015", amount: "219077.69", reporter: "Khalil Bernhard", notes: "Iste reprehenderit explicabo id voluptatibus aperiam.", status: "rejected", kind: "internal", company_id: 3, category_ids: [1]) 
Operation.create!(invoice_num: "DM42295", invoice_date: "03-06-2015", operation_date: "03-06-2015", amount: "5681.78", reporter: "Sonny Ankunding", notes: "Soluta quos enim vitae animi. Minima libero sint. Odit excepturi soluta neque tempore quia.", status: "other", kind: "Other", company_id: 4, category_ids: [3]) 
Operation.create!(invoice_num: "DM26768", invoice_date: "03-06-2015", operation_date: "03-06-2015", amount: "16326.50", reporter: "Kyle Steuber", notes: "Ea est id.", status: "other", kind: "important", company_id: 5, category_ids: [4]) 
Operation.create!(invoice_num: "DC82991", invoice_date: "03-06-2015", operation_date: "03-06-2015", amount: "214540.33", reporter: "Marc Reichel", notes: "Delectus voluptas velit sed dolores voluptates.", status: "other", kind: "delegation", company_id: 6, category_ids: [2, 4, 5]) 
Operation.create!(invoice_num: "DC95462", invoice_date: "03-06-2015", operation_date: "03-06-2015", amount: "4713.6", reporter: "Oceane Altenwerth", notes: "Facere quia omnis nam.", status: "rejected", kind: "other", company_id: 7) 
Operation.create!(invoice_num: "DO52012", invoice_date: "03-06-2015", operation_date: "03-06-2015", amount: "4192.1", reporter: "Arthur Hilll", notes: "Provident reprehenderit cum atque inventore magni quo perspiciatis.", status: "rejected", kind: "important", company_id: 8, category_ids: [5]) 
Operation.create!(invoice_num: "DW54368", invoice_date: "03-06-2015", operation_date: "03-06-2015", amount: "210654.44", reporter: "Chanel Bogan", notes: "Qui blanditiis ut assumenda dignissimos beatae est est.", status: "accepted", kind: "Important", company_id: 9) 
Operation.create!(invoice_num: "DC79947", invoice_date: "03-06-2015", operation_date: "03-06-2015", amount: "217363.25", reporter: "Everett Greenfelder I", notes: "Dolorem tenetur ducimus omnis rerum qui.", status: "rejected", kind: "negligible", company_id: 10, category_ids: [3]) 
Operation.create!(invoice_num: "DB91123", invoice_date: "03-06-2015", operation_date: "03-06-2015", amount: "218539.88", reporter: "Garnet Schamberger", notes: "Ipsa odit inventore ipsam voluptas cum.", status: "rejected", kind: "internal", company_id: 11, category_ids: [3,5]) 
Operation.create!(invoice_num: "DK83761", invoice_date: "03-06-2015", operation_date: "03-06-2015", amount: "1437.9", reporter: "Lupe Kirlin", notes: "Non sed ullam nemo aspernatur autem enim.", status: "accepted", kind: "other", company_id: 12, category_ids: [1]) 
Operation.create!(invoice_num: "DC90380", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "215640.72", reporter: "Keanu Hettinger II", notes: "Fugit voluptatem illo nemo.", status: "accepted", kind: "important", company_id: 13, category_ids: [2, 4, 5]) 
Operation.create!(invoice_num: "DC42791", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "216431.10", reporter: "Holly Ebert I", notes: "Nesciunt cupiditate amet et.", status: "other", kind: "negligible", company_id: 1, category_ids: [4,5]) 
Operation.create!(invoice_num: "DM19940", invoice_date: "16-04-2015", operation_date: "13-04-2015", amount: "18961.67", reporter: "Annalise Schaden", notes: "Debitis quidem voluptatum assumenda corporis. Et et porro et excepturi. In et suscipit cumque error velit omnis.", status: "accepted", kind: "negligible", company_id: 3) 
Operation.create!(invoice_num: "DK22081", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "4112.65", reporter: "Joy Macejkovic", notes: "Rerum nemo quas.", status: "rejected", kind: "Important", company_id: 5, category_ids: [2,3]) 
Operation.create!(invoice_num: "DS65616", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "216196.75", reporter: "Monserrat Feest", notes: "Adipisci possimus omnis nostrum explicabo totam. Enim minima aut qui neque dolor reiciendis laudantium. Magnam hic magni repellat.", status: "accepted", kind: "important", company_id: 7, category_ids: [2, 4, 5]) 
Operation.create!(invoice_num: "DM22976", invoice_date: "21-01-2015", operation_date: "16-01-2015", amount: "210696.50", reporter: "Cristobal Wisozk", notes: "Ratione incidunt reprehenderit iste vel aut molestiae.", status: "other", kind: "other", company_id: 9) 
Operation.create!(invoice_num: "DB48994", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "26568.26", reporter: "Otha Hills", notes: "Atque quo odio expedita facilis.", status: "rejected", kind: "negligible", company_id: 11, category_ids: [5]) 
Operation.create!(invoice_num: "DO79800", invoice_date: "23-03-2013", operation_date: "23-03-2013", amount: "26544.64", reporter: "Bernardo Wyman", notes: "Id dolorem et.", status: "rejected", kind: "internal", company_id: 1, category_ids: [5]) 
Operation.create!(invoice_num: "DA95106", invoice_date: "14-12-2013", operation_date: "12-12-2013", amount: "219595.72", reporter: "Laron Walker V", notes: "Debitis ut explicabo ut provident.", status: "accepted", kind: "delegation", company_id: 2) 
Operation.create!(invoice_num: "DK41448", invoice_date: "25-06-2013", operation_date: "16-06-2013", amount: "21705.23", reporter: "Kelvin Miller", notes: "Unde asperiores reiciendis ut sed et.", status: "accepted", kind: "other", company_id: 3, category_ids: [4]) 
Operation.create!(invoice_num: "DM27754", invoice_date: "14-12-2012", operation_date: "13-12-2012", amount: "21659.73", reporter: "Lucious Gislason I", notes: "Totam autem illum molestiae doloribus aspernatur.", status: "rejected", kind: "other", company_id: 4) 
Operation.create!(invoice_num: "DM94019", invoice_date: "12-05-2014", operation_date: "08-05-2014", amount: "2344.34", reporter: "Stewart Miller", notes: "Impedit facere quia magnam dignissimos et.", status: "rejected", kind: "Delegation", company_id: 1, category_ids: [3]) 
Operation.create!(invoice_num: "DC48797", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "215363.22", reporter: "Mr. Gudrun Willms", notes: "Qui nemo nihil consequatur.", status: "rejected", kind: "Important", company_id: 5) 
Operation.create!(invoice_num: "DW26747", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "214660.87", reporter: "Rex McGlynn", notes: "Consequatur voluptatem repudiandae aperiam dignissimos temporibus.", status: "accepted", kind: "Important", company_id: 6, category_ids: [5]) 
Operation.create!(invoice_num: "DO69885", invoice_date: "22-10-2013", operation_date: "13-10-2013", amount: "21494.44", reporter: "Muriel Streich", notes: "Odio dolor et quasi. Non corrupti deserunt. Esse quia nulla nihil eligendi impedit alias. Sunt aut velit minima suscipit voluptatem ad.", status: "rejected", kind: "important", company_id: 3, category_ids: [1]) 
Operation.create!(invoice_num: "DM65337", invoice_date: "02-10-2013", operation_date: "24-09-2013", amount: "21936.44", reporter: "Ms. Marta Kovacek", notes: "Fuga officia delectus vel optio quisquam.", status: "rejected", kind: "other", company_id: 2, category_ids: [1]) 
Operation.create!(invoice_num: "DM49597", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "214338.42", reporter: "Juwan Herzog", notes: "Aut dolorum et velit aut id consequatur.", status: "other", kind: "internal", company_id: 1, category_ids: [4]) 
Operation.create!(invoice_num: "DC60539", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "217436.8", reporter: "Wyatt Kling", notes: "Eius voluptatem error est. Tempore eveniet provident voluptas corporis sunt vel corrupti. Corrupti ex quia iure sed temporibus reiciendis.", status: "other", kind: "Delegation", company_id: 3, category_ids: [5]) 
Operation.create!(invoice_num: "DO89361", invoice_date: "19-09-2012", operation_date: "19-09-2012", amount: "212654.81", reporter: "Kelley Kessler", notes: "Dolorem nulla sint. Commodi exercitationem dolorem.", status: "accepted", kind: "client", company_id: 7, category_ids: [2,5]) 
Operation.create!(invoice_num: "DC56750", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "212576.3", reporter: "Bennie Klein", notes: "Nulla explicabo maiores ut.", status: "accepted", kind: "other", company_id: 4, category_ids: [3,4]) 
Operation.create!(invoice_num: "DC61869", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "214403.62", reporter: "Clemens Kirlin", notes: "Praesentium molestiae eos culpa. Cupiditate voluptatum iusto ea aut dicta voluptatem velit. Cumque laborum accusantium rem repudiandae. Enim in impedit voluptatibus.", status: "other", kind: "important", company_id: 2) 
Operation.create!(invoice_num: "DK35024", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "215340.97", reporter: "Rosemarie Grimes", notes: "Ipsa quia est numquam modi.", status: "other", kind: "negligible", company_id: 1, category_ids: [4]) 
Operation.create!(invoice_num: "DT76012", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "2184.14", reporter: "Arch Rutherford", notes: "Fuga aut mollitia.", status: "accepted", kind: "important", company_id: 6, category_ids: [2, 4, 5]) 
Operation.create!(invoice_num: "DW38216", invoice_date: "13-05-2013", operation_date: "11-05-2013", amount: "217167.59", reporter: "Jennifer Durgan", notes: "Provident cum ut odio. Quas ut quae possimus adipisci alias qui laboriosam.", status: "rejected", kind: "other", company_id: 8, category_ids: [1]) 
Operation.create!(invoice_num: "DM79146", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "216850.70", reporter: "Vada Muller", notes: "Sed placeat aut. Sequi aut numquam enim et dolor harum. Qui et odit reprehenderit.", status: "rejected", kind: "other", company_id: 9, category_ids: [2]) 
Operation.create!(invoice_num: "DS40334", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "2158.49", reporter: "Clinton Batz", notes: "Assumenda fuga voluptatem.", status: "accepted", kind: "client", company_id: 10, category_ids: [4]) 
Operation.create!(invoice_num: "DA94870", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "216710.61", reporter: "Garnet Glover", notes: "Laborum qui harum.", status: "rejected", kind: "internal", company_id: 11, category_ids: [3]) 
Operation.create!(invoice_num: "DM54459", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "2141.56", reporter: "Dorris McGlynn", notes: "Porro consequatur adipisci sint. Accusantium voluptas natus eveniet quam consequuntur. Cumque quis debitis non et quo. Deleniti ad et dolore dignissimos soluta qui.", status: "accepted", kind: "other", company_id: 12) 
Operation.create!(invoice_num: "DB66910", invoice_date: "01-10-2014", operation_date: "01-10-2014", amount: "21439.72", reporter: "Laney Russel", notes: "Nam itaque aut voluptatem quas rerum libero.", status: "rejected", kind: "Delegation", company_id: 13, category_ids: [5]) 
Operation.create!(invoice_num: "DB90526", invoice_date: "19-03-2015", operation_date: "10-03-2015", amount: "2837.67", reporter: "Dr. Eliseo Nienow", notes: "Quibusdam esse voluptatem quos voluptas quas. Dolor distinctio aut est vel voluptas corrupti. Occaecati sed placeat accusantium.", status: "other", kind: "other", company_id: 4, category_ids: [5]) 
Operation.create!(invoice_num: "DO48333", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "5759.68", reporter: "Blaise Tromp", notes: "Asperiores mollitia non inventore optio maxime.", status: "other", kind: "client", company_id: 5, category_ids: [2, 4, 5]) 
Operation.create!(invoice_num: "DT27664", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "1833.82", reporter: "Dr. Mathilde Batz", notes: "Sapiente aut dolorum voluptatibus fugit qui aliquid.", status: "other", kind: "other", company_id: 3, category_ids: [2]) 
Operation.create!(invoice_num: "DK12695", invoice_date: "06-11-2013", operation_date: "29-10-2013", amount: "219933.34", reporter: "Llewellyn Kling", notes: "Voluptates asperiores ut recusandae. Recusandae enim eligendi esse.", status: "other", kind: "internal", company_id: 2, category_ids: [2]) 
Operation.create!(invoice_num: "DM56038", invoice_date: "07-10-2014", operation_date: "03-10-2014", amount: "210578.43", reporter: "Dixie Abshire", notes: "Autem magni tempora cupiditate cum minima. Aut minima totam sit repellendus fugit non.", status: "rejected", kind: "negligible", company_id: 1, category_ids: [1]) 
Operation.create!(invoice_num: "DS26315", invoice_date: "30-12-2012", operation_date: "23-12-2012", amount: "212972.79", reporter: "Mr. Davonte Macejkovic", notes: "Deleniti et quas quidem.", status: "accepted", kind: "other", company_id: 4, category_ids: [5]) 
Operation.create!(invoice_num: "DK95004", invoice_date: "15-06-2015", operation_date: "15-06-2015", amount: "1656.19", reporter: "Stone Shields", notes: "Voluptas atque voluptatibus sapiente aut reprehenderit aut.", status: "rejected", kind: "negligible", company_id: 2, category_ids: [5]) 
 