-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 09, 2024 at 09:17 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unicode-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2024_11_07_041536_create_products_table', 2),
(12, '2024_11_07_130706_create_groups_table', 2),
(13, '2024_11_07_132336_add_field_groups_table', 2),
(14, '2024_11_07_145231_create_posts_table', 3),
(16, '2024_11_07_150854_rename_groups_table', 4),
(17, '2024_11_07_151158_add_field_products_table', 4),
(20, '2024_11_08_012936_change_field_products_table', 5),
(22, '2024_11_09_022117_change_data_type_products_table', 6),
(23, '2024_11_09_023402_change_status_column_products_table', 7),
(24, '2024_11_09_035704_add_unique_sku_products_table', 7),
(25, '2024_11_09_113301_create_attributes_table', 7),
(27, '2024_11_09_114559_drop_primary_attributes_table', 8),
(28, '2024_11_09_115255_add_index__products_table', 9),
(30, '2024_11_09_122141_add_field_users_table', 10),
(31, '2024_11_09_122951_add_foreign_users_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `published_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `status`, `published_at`, `created_at`, `updated_at`) VALUES
(50, 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Audio equidem philosophi vocem, Epicure, sed quid tibi dicendum sit oblitus es. Quae iam oratio non a philosopho aliquo, sed a censore opprimenda est. Deinde prima illa, quae in congressu solemus: Quid tu, inquit, huc? Quid ei reliquisti, nisi te, quoquo modo loqueretur, intellegere, quid diceret? Eodem modo is enim tibi nemo dabit, quod, expetendum sit, id esse laudabile. Duo Reges: constructio interrete. Quis enim potest ea, quae probabilia videantur ei, non probare? \n\nHoc est vim afferre, Torquate, sensibus, extorquere ex animis cognitiones verborum, quibus inbuti sumus. Obsecro, inquit, Torquate, haec dicit Epicurus? Qui autem de summo bono dissentit de tota philosophiae ratione dissentit. Unum est sine dolore esse, alterum cum voluptate. Ita redarguitur ipse a sese, convincunturque scripta eius probitate ipsius ac moribus. An ea, quae per vinitorem antea consequebatur, per se ipsa curabit? \n\nQui est in parvis malis. Gloriosa ostentatio in constituendo summo bono. Illis videtur, qui illud non dubitant bonum dicere -; Falli igitur possumus. Atqui haec patefactio quasi rerum opertarum, cum quid quidque sit aperitur, definitio est. Non enim ipsa genuit hominem, sed accepit a natura inchoatum. Bork Qui non moveatur et offensione turpitudinis et comprobatione honestatis? \n\n', 1, '2024-11-09 07:15:15', '2024-11-09 07:15:15', NULL),
(51, 'Lorem ipsum dolor sit amet, consectetur adip', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quae est igitur causa istarum angustiarum? Si enim ita est, vide ne facinus facias, cum mori suadeas. Si id dicis, vicimus. Duo Reges: constructio interrete. Sed haec quidem liberius ab eo dicuntur et saepius. Quid enim est a Chrysippo praetermissum in Stoicis? An eum discere ea mavis, quae cum plane perdidiceriti nihil sciat? Nec tamen ullo modo summum pecudis bonum et hominis idem mihi videri potest. Sed tamen intellego quid velit. Quod si ita est, sequitur id ipsum, quod te velle video, omnes semper beatos esse sapientes. \n\nVideamus animi partes, quarum est conspectus illustrior; Hi curatione adhibita levantur in dies, valet alter plus cotidie, alter videt. Quod cum accidisset ut alter alterum necopinato videremus, surrexit statim. Duo enim genera quae erant, fecit tria. Quam illa ardentis amores excitaret sui! Cur tandem? Sic, et quidem diligentius saepiusque ista loquemur inter nos agemusque communiter. Vide igitur ne non debeas verbis nostris uti, sententiis tuis. Qui-vere falsone, quaerere mittimus-dicitur oculis se privasse; \n\nCur tantas regiones barbarorum pedibus obiit, tot maria transmisit? Pauca mutat vel plura sane; Earum etiam rerum, quas terra gignit, educatio quaedam et perfectio est non dissimilis animantium. Roges enim Aristonem, bonane ei videantur haec: vacuitas doloris, divitiae, valitudo; Recte, inquit, intellegis. Cur, nisi quod turpis oratio est? Negabat igitur ullam esse artem, quae ipsa a se proficisceretur; \n\n', 1, '2024-11-09 07:15:50', '2024-11-09 07:15:50', NULL),
(52, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Atqui eorum nihil est eius generis, ut sit in fine atque extrerno bonorum. Fortemne possumus dicere eundem illum Torquatum? Sed quanta sit alias, nunc tantum possitne esse tanta. Atqui reperies, inquit, in hoc quidem pertinacem; Duo Reges: constructio interrete. \n\nHuic mori optimum esse propter desperationem sapientiae, illi propter spem vivere. Ille vero, si insipiens-quo certe, quoniam tyrannus -, numquam beatus; Dicam, inquam, et quidem discendi causa magis, quam quo te aut Epicurum reprehensum velim. At, illa, ut vobis placet, partem quandam tuetur, reliquam deserit. Et ais, si una littera commota sit, fore tota ut labet disciplina. Quod equidem non reprehendo; \n\nBonum negas esse divitias, praeposìtum esse dicis? Quia nec honesto quic quam honestius nec turpi turpius. Qui autem de summo bono dissentit de tota philosophiae ratione dissentit. Ut aliquid scire se gaudeant? Aeque enim contingit omnibus fidibus, ut incontentae sint. Contemnit enim disserendi elegantiam, confuse loquitur. \n\n', 1, '2024-11-09 07:15:51', '2024-11-09 07:15:51', NULL),
(53, 'Lorem ipsum dolor sit amet, consectetur adi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quae in controversiam veniunt, de iis, si placet, disseramus. Quare si potest esse beatus is, qui est in asperis reiciendisque rebus, potest is quoque esse. Nonne videmus quanta perturbatio rerum omnium consequatur, quanta confusio? Duo Reges: constructio interrete. Videmusne ut pueri ne verberibus quidem a contemplandis rebus perquirendisque deterreantur? Similiter sensus, cum accessit ad naturam, tuetur illam quidem, sed etiam se tuetur; Quid sequatur, quid repugnet, vident. Causa autem fuit huc veniendi ut quosdam hinc libros promerem. Quae quo sunt excelsiores, eo dant clariora indicia naturae. Quacumque enim ingredimur, in aliqua historia vestigium ponimus. Quodsi ipsam honestatem undique pertectam atque absolutam. \n\nUnum nescio, quo modo possit, si luxuriosus sit, finitas cupiditates habere. Profectus in exilium Tubulus statim nec respondere ausus; Varietates autem iniurasque fortunae facile veteres philosophorum praeceptis instituta vita superabat. Similiter sensus, cum accessit ad naturam, tuetur illam quidem, sed etiam se tuetur; Quid enim de amicitia statueris utilitatis causa expetenda vides. Cupit enim dícere nihil posse ad beatam vitam deesse sapienti. Quacumque enim ingredimur, in aliqua historia vestigium ponimus. \n\nDulce amarum, leve asperum, prope longe, stare movere, quadratum rotundum. Sed non alienum est, quo facilius vis verbi intellegatur, rationem huius verbi faciendi Zenonis exponere. Nullum inveniri verbum potest quod magis idem declaret Latine, quod Graece, quam declarat voluptas. Hoc etsi multimodis reprehendi potest, tamen accipio, quod dant. Deinde prima illa, quae in congressu solemus: Quid tu, inquit, huc? At quicum ioca seria, ut dicitur, quicum arcana, quicum occulta omnia? \n\n', 1, '2024-11-09 07:15:52', '2024-11-09 07:15:52', NULL),
(54, 'Lorem ipsum dolor sit amet, consectetur adipisc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quae cum dixisset paulumque institisset, Quid est? A primo, ut opinor, animantium ortu petitur origo summi boni. Duo Reges: constructio interrete. Egone non intellego, quid sit don Graece, Latine voluptas? Et hercule-fatendum est enim, quod sentio -mirabilis est apud illos contextus rerum. Itaque eos id agere, ut a se dolores, morbos, debilitates repellant. Cur deinde Metrodori liberos commendas? \n\nFacillimum id quidem est, inquam. Sin aliud quid voles, postea. Illa videamus, quae a te de amicitia dicta sunt. Hoc loco tenere se Triarius non potuit. Respondent extrema primis, media utrisque, omnia omnibus. Qui bonum omne in virtute ponit, is potest dicere perfici beatam vitam perfectione virtutis; Nihil est enim, de quo aliter tu sentias atque ego, modo commutatis verbis ipsas res conferamus. Si enim ad populum me vocas, eum. Hoc est dicere: Non reprehenderem asotos, si non essent asoti. De hominibus dici non necesse est. \n\nNon ego tecum iam ita iocabor, ut isdem his de rebus, cum L. Omnia contraria, quos etiam insanos esse vultis. Illum mallem levares, quo optimum atque humanissimum virum, Cn. Hoc Hieronymus summum bonum esse dixit. Expressa vero in iis aetatibus, quae iam confirmatae sunt. \n\n', 1, '2024-11-09 07:15:53', '2024-11-09 07:15:53', NULL),
(55, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam Pyrrho, Aristo, Erillus iam diu abiecti. Huius ego nunc auctoritatem sequens idem faciam. Omnes enim iucundum motum, quo sensus hilaretur. Polemoni et iam ante Aristoteli ea prima visa sunt, quae paulo ante dixi. Huius ego nunc auctoritatem sequens idem faciam. Sed haec ab Antiocho, familiari nostro, dicuntur multo melius et fortius, quam a Stasea dicebantur. Hoc dixerit potius Ennius: Nimium boni est, cui nihil est mali. Duo Reges: constructio interrete. Quis Aristidem non mortuum diligit? \n\nUt aliquid scire se gaudeant? Quem si tenueris, non modo meum Ciceronem, sed etiam me ipsum abducas licebit. An hoc usque quaque, aliter in vita? Iam doloris medicamenta illa Epicurea tamquam de narthecio proment: Si gravis, brevis; Itaque sensibus rationem adiunxit et ratione effecta sensus non reliquit. \n\nQuae animi affectio suum cuique tribuens atque hanc, quam dico. Qui potest igitur habitare in beata vita summi mali metus? Quarum ambarum rerum cum medicinam pollicetur, luxuriae licentiam pollicetur. Non autem hoc: igitur ne illud quidem. Qua tu etiam inprudens utebare non numquam. \n\n', 1, '2024-11-09 07:15:54', '2024-11-09 07:15:54', NULL),
(56, 'Lorem ipsum dolor sit amet, consectetur adi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Itaque hic ipse iam pridem est reiectus; Nam Pyrrho, Aristo, Erillus iam diu abiecti. Isto modo, ne si avia quidem eius nata non esset. Vidit Homerus probari fabulam non posse, si cantiunculis tantus irretitus vir teneretur; Quorum sine causa fieri nihil putandum est. Ad corpus diceres pertinere-, sed ea, quae dixi, ad corpusne refers? Duo Reges: constructio interrete. Tubulum fuisse, qua illum, cuius is condemnatus est rogatione, P. \n\nPraetereo multos, in bis doctum hominem et suavem, Hieronymum, quem iam cur Peripateticum appellem nescio. Cuius ad naturam apta ratio vera illa et summa lex a philosophis dicitur. Sed quid minus probandum quam esse aliquem beatum nec satis beatum? Num igitur dubium est, quin, si in re ipsa nihil peccatur a superioribus, verbis illi commodius utantur? Animi enim quoque dolores percipiet omnibus partibus maiores quam corporis. \n\nAd eos igitur converte te, quaeso. Sic vester sapiens magno aliquo emolumento commotus cicuta, si opus erit, dimicabit. Haec igitur Epicuri non probo, inquam. An hoc usque quaque, aliter in vita? An vero, inquit, quisquam potest probare, quod perceptfum, quod. Quasi vero, inquit, perpetua oratio rhetorum solum, non etiam philosophorum sit. Non est ista, inquam, Piso, magna dissensio. Quae animi affectio suum cuique tribuens atque hanc, quam dico. Nec lapathi suavitatem acupenseri Galloni Laelius anteponebat, sed suavitatem ipsam neglegebat; \n\n', 1, '2024-11-09 07:15:55', '2024-11-09 07:15:55', NULL),
(57, 'Lorem ipsum dolor sit amet, consectetur adipisc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Hoc etsi multimodis reprehendi potest, tamen accipio, quod dant. Sed residamus, inquit, si placet. Duo Reges: constructio interrete. In eo enim positum est id, quod dicimus esse expetendum. Quid de Platone aut de Democrito loquar? Is ita vivebat, ut nulla tam exquisita posset inveniri voluptas, qua non abundaret. \n\nCollatio igitur ista te nihil iuvat. Non est ista, inquam, Piso, magna dissensio. Traditur, inquit, ab Epicuro ratio neglegendi doloris. Honesta oratio, Socratica, Platonis etiam. \n\nSi quicquam extra virtutem habeatur in bonis. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Poterat autem inpune; Quod si ita se habeat, non possit beatam praestare vitam sapientia. Hoc etsi multimodis reprehendi potest, tamen accipio, quod dant. Si enim non fuit eorum iudicii, nihilo magis hoc non addito illud est iudicatum-. At Zeno eum non beatum modo, sed etiam divitem dicere ausus est. Quid turpius quam sapientis vitam ex insipientium sermone pendere? Laelius clamores sofòw ille so lebat Edere compellans gumias ex ordine nostros. \n\n', 1, '2024-11-09 07:15:56', '2024-11-09 07:15:56', NULL),
(58, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Hoc Hieronymus summum bonum esse dixit. Nam quibus rebus efficiuntur voluptates, eae non sunt in potestate sapientis. Bonum liberi: misera orbitas. Ut pompa, ludis atque eius modi spectaculis teneantur ob eamque rem vel famem et sitim perferant? Quamquam tu hanc copiosiorem etiam soles dicere. Duo Reges: constructio interrete. Teneo, inquit, finem illi videri nihil dolere. Licet hic rursus ea commemores, quae optimis verbis ab Epicuro de laude amicitiae dicta sunt. Experiamur igitur, inquit, etsi habet haec Stoicorum ratio difficilius quiddam et obscurius. \n\nScaevola tribunus plebis ferret ad plebem vellentne de ea re quaeri. Non semper, inquam; Quod si ita se habeat, non possit beatam praestare vitam sapientia. Sed ne, dum huic obsequor, vobis molestus sim. Illa enim, quae prosunt aut quae nocent, aut bona sunt aut mala, quae sint paria necesse est. Idemne, quod iucunde? \n\nUt optime, secundum naturam affectum esse possit. Quis enim redargueret? An hoc usque quaque, aliter in vita? Summae mihi videtur inscitiae. Itaque eos id agere, ut a se dolores, morbos, debilitates repellant. \n\n', 1, '2024-11-09 07:15:57', '2024-11-09 07:15:57', NULL),
(59, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sic, et quidem diligentius saepiusque ista loquemur inter nos agemusque communiter. Itaque a sapientia praecipitur se ipsam, si usus sit, sapiens ut relinquat. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Quamvis enim depravatae non sint, pravae tamen esse possunt. De quibus cupio scire quid sentias. Atqui iste locus est, Piso, tibi etiam atque etiam confirmandus, inquam; Negat enim summo bono afferre incrementum diem. Duo Reges: constructio interrete. Ita multo sanguine profuso in laetitia et in victoria est mortuus. Virtutibus igitur rectissime mihi videris et ad consuetudinem nostrae orationis vitia posuisse contraria. \n\nLegimus tamen Diogenem, Antipatrum, Mnesarchum, Panaetium, multos alios in primisque familiarem nostrum Posidonium. Quicquid porro animo cernimus, id omne oritur a sensibus; Sed tamen intellego quid velit. Audeo dicere, inquit. Quae cum essent dicta, finem fecimus et ambulandi et disputandi. Et nemo nimium beatus est; \n\nMulta sunt dicta ab antiquis de contemnendis ac despiciendis rebus humanis; Perturbationes autem nulla naturae vi commoventur, omniaque ea sunt opiniones ac iudicia levitatis. Nihilo magis. Quis istum dolorem timet? Quid est, quod ab ea absolvi et perfici debeat? Virtutis, magnitudinis animi, patientiae, fortitudinis fomentis dolor mitigari solet. Aliud igitur esse censet gaudere, aliud non dolere. Quod iam a me expectare noli. \n\n', 1, '2024-11-09 07:15:59', '2024-11-09 07:15:59', NULL),
(60, 'Lorem ipsum dolor sit amet, consectetur adipiscin', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faceres tu quidem, Torquate, haec omnia; Omnia contraria, quos etiam insanos esse vultis. Quae cum essent dicta, discessimus. Negat esse eam, inquit, propter se expetendam. Non igitur potestis voluptate omnia dirigentes aut tueri aut retinere virtutem. Duo Reges: constructio interrete. Quid, si reviviscant Platonis illi et deinceps qui eorum auditores fuerunt, et tecum ita loquantur? Deinde dolorem quem maximum? Facile est hoc cernere in primis puerorum aetatulis. Vulgo enim dicitur: Iucundi acti labores, nec male Euripidesconcludam, si potero, Latine; \n\nQuamquam haec quidem praeposita recte et reiecta dicere licebit. Videamus igitur sententias eorum, tum ad verba redeamus. Illud non continuo, ut aeque incontentae. Ut aliquid scire se gaudeant? Illa videamus, quae a te de amicitia dicta sunt. Ne amores quidem sanctos a sapiente alienos esse arbitrantur. \n\nMihi enim satis est, ipsis non satis. Atqui iste locus est, Piso, tibi etiam atque etiam confirmandus, inquam; Fortemne possumus dicere eundem illum Torquatum? Verum hoc idem saepe faciamus. Efficiens dici potest. Si longus, levis. \n\n', 1, '2024-11-09 07:16:00', '2024-11-09 07:16:00', NULL),
(61, 'Lorem ipsum dolor sit amet, consectetur adipis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ego vero volo in virtute vim esse quam maximam; Nobis aliter videtur, recte secusne, postea; Itaque his sapiens semper vacabit. Duo Reges: constructio interrete. Idemne potest esse dies saepius, qui semel fuit? Quid ergo attinet gloriose loqui, nisi constanter loquare? Fortemne possumus dicere eundem illum Torquatum? Quae diligentissime contra Aristonem dicuntur a Chryippo. \n\nEfficiens dici potest. Satis est tibi in te, satis in legibus, satis in mediocribus amicitiis praesidii. Sed id ne cogitari quidem potest quale sit, ut non repugnet ipsum sibi. Erit enim mecum, si tecum erit. \n\nIta relinquet duas, de quibus etiam atque etiam consideret. Quod si ita se habeat, non possit beatam praestare vitam sapientia. Hic quoque suus est de summoque bono dissentiens dici vere Peripateticus non potest. Perturbationes autem nulla naturae vi commoventur, omniaque ea sunt opiniones ac iudicia levitatis. Videsne quam sit magna dissensio? \n\n', 1, '2024-11-09 07:16:41', '2024-11-09 07:16:41', NULL),
(62, 'Lorem ipsum dolor sit amet, consectetur adipiscin', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis animo aequo videt eum, quem inpure ac flagitiose putet vivere? Verba tu fingas et ea dicas, quae non sentias? Primum quid tu dicis breve? Ut in geometria, prima si dederis, danda sunt omnia. Scripta sane et multa et polita, sed nescio quo pacto auctoritatem oratio non habet. Nam ista vestra: Si gravis, brevis; Duo Reges: constructio interrete. Quid ad utilitatem tantae pecuniae? Quam illa ardentis amores excitaret sui! Cur tandem? \n\nSed tamen est aliquid, quod nobis non liceat, liceat illis. Quid ad utilitatem tantae pecuniae? \n\nTraditur, inquit, ab Epicuro ratio neglegendi doloris. Iis igitur est difficilius satis facere, qui se Latina scripta dicunt contemnere. Atqui haec patefactio quasi rerum opertarum, cum quid quidque sit aperitur, definitio est. Laelius clamores sofòw ille so lebat Edere compellans gumias ex ordine nostros. Est enim effectrix multarum et magnarum voluptatum. Huius, Lyco, oratione locuples, rebus ipsis ielunior. Fortitudinis quaedam praecepta sunt ac paene leges, quae effeminari virum vetant in dolore. Nam si propter voluptatem, quae est ista laus, quae possit e macello peti? Ergo illi intellegunt quid Epicurus dicat, ego non intellego? \n\n', 1, '2024-11-09 07:16:42', '2024-11-09 07:16:42', NULL),
(63, 'Lorem ipsum dolor sit amet, consectetur adip', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sapientem locupletat ipsa natura, cuius divitias Epicurus parabiles esse docuit. Eorum enim est haec querela, qui sibi cari sunt seseque diligunt. Saepe ab Aristotele, a Theophrasto mirabiliter est laudata per se ipsa rerum scientia; Ergo illi intellegunt quid Epicurus dicat, ego non intellego? Mihi enim satis est, ipsis non satis. Maximas vero virtutes iacere omnis necesse est voluptate dominante. \n\nCum id fugiunt, re eadem defendunt, quae Peripatetici, verba. Duo Reges: constructio interrete. Quod autem in homine praestantissimum atque optimum est, id deseruit. Quis istud possit, inquit, negare? Sit hoc ultimum bonorum, quod nunc a me defenditur; Praeclare enim Plato: Beatum, cui etiam in senectute contigerit, ut sapientiam verasque opiniones assequi possit. \n\nPraeteritis, inquit, gaudeo. Tollenda est atque extrahenda radicitus. Facile est hoc cernere in primis puerorum aetatulis. Nunc omni virtuti vitium contrario nomine opponitur. Ita ne hoc quidem modo paria peccata sunt. Non dolere, inquam, istud quam vim habeat postea videro; Restincta enim sitis stabilitatem voluptatis habet, inquit, illa autem voluptas ipsius restinctionis in motu est. Non est igitur summum malum dolor. Bork \n\n', 1, '2024-11-09 07:16:43', '2024-11-09 07:16:43', NULL),
(64, 'Lorem ipsum dolor sit amet, consectetur adipiscin', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duo Reges: constructio interrete. Hoc loco tenere se Triarius non potuit. Verum esto: verbum ipsum voluptatis non habet dignitatem, nec nos fortasse intellegimus. Oculorum, inquit Plato, est in nobis sensus acerrimus, quibus sapientiam non cernimus. Quippe: habes enim a rhetoribus; Nam aliquando posse recte fieri dicunt nulla expectata nec quaesita voluptate. \n\nAut haec tibi, Torquate, sunt vituperanda aut patrocinium voluptatis repudiandum. Sin kakan malitiam dixisses, ad aliud nos unum certum vitium consuetudo Latina traduceret. Age sane, inquam. Hoc loco tenere se Triarius non potuit. Eorum enim omnium multa praetermittentium, dum eligant aliquid, quod sequantur, quasi curta sententia; Quod autem principium officii quaerunt, melius quam Pyrrho; Quid affers, cur Thorius, cur Caius Postumius, cur omnium horum magister, Orata, non iucundissime vixerit? Istam voluptatem, inquit, Epicurus ignorat? \n\nIstam voluptatem perpetuam quis potest praestare sapienti? Qui-vere falsone, quaerere mittimus-dicitur oculis se privasse; Ergo omni animali illud, quod appetiti positum est in eo, quod naturae est accommodatum. Minime vero, inquit ille, consentit. \n\n', 1, '2024-11-09 07:16:44', '2024-11-09 07:16:44', NULL),
(65, 'Lorem ipsum dolor sit amet, consectetur adipis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praeclare hoc quidem. Laboro autem non sine causa; Ne in odium veniam, si amicum destitero tueri. Duo Reges: constructio interrete. Dempta enim aeternitate nihilo beatior Iuppiter quam Epicurus; Dolor ergo, id est summum malum, metuetur semper, etiamsi non aderit; Sed quid sentiat, non videtis. Sed ad haec, nisi molestum est, habeo quae velim. Nihil opus est exemplis hoc facere longius. Quamquam ab iis philosophiam et omnes ingenuas disciplinas habemus; \n\nQuid, quod homines infima fortuna, nulla spe rerum gerendarum, opifices denique delectantur historia? Bonum negas esse divitias, praeposìtum esse dicis? Sed haec quidem liberius ab eo dicuntur et saepius. Mihi vero, inquit, placet agi subtilius et, ut ipse dixisti, pressius. Quamquam tu hanc copiosiorem etiam soles dicere. Aliter enim explicari, quod quaeritur, non potest. Quamvis enim depravatae non sint, pravae tamen esse possunt. Et hunc idem dico, inquieta sed ad virtutes et ad vitia nihil interesse. Ad corpus diceres pertinere-, sed ea, quae dixi, ad corpusne refers? \n\nSin tantum modo ad indicia veteris memoriae cognoscenda, curiosorum. Quarum ambarum rerum cum medicinam pollicetur, luxuriae licentiam pollicetur. Bork Quae tamen a te agetur non melior, quam illae sunt, quas interdum optines. Hanc ergo intuens debet institutum illud quasi signum absolvere. Collatio igitur ista te nihil iuvat. \n\n', 1, '2024-11-09 07:16:46', '2024-11-09 07:16:46', NULL),
(66, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum autem negant ea quicquam ad beatam vitam pertinere, rursus naturam relinquunt. Habes, inquam, Cato, formam eorum, de quibus loquor, philosophorum. Ac tamen hic mallet non dolere. Nunc ita separantur, ut disiuncta sint, quo nihil potest esse perversius. Quis, quaeso, illum negat et bonum virum et comem et humanum fuisse? Legimus tamen Diogenem, Antipatrum, Mnesarchum, Panaetium, multos alios in primisque familiarem nostrum Posidonium. Quae in controversiam veniunt, de iis, si placet, disseramus. Duo Reges: constructio interrete. Quicquid porro animo cernimus, id omne oritur a sensibus; Et quod est munus, quod opus sapientiae? \n\nNunc ita separantur, ut disiuncta sint, quo nihil potest esse perversius. Deinde disputat, quod cuiusque generis animantium statui deceat extremum. Unum est sine dolore esse, alterum cum voluptate. Quam illa ardentis amores excitaret sui! Cur tandem? Estne, quaeso, inquam, sitienti in bibendo voluptas? Fortasse id optimum, sed ubi illud: Plus semper voluptatis? Isto modo ne improbos quidem, si essent boni viri. Age nunc isti doceant, vel tu potius quis enim ista melius? \n\nHaec bene dicuntur, nec ego repugno, sed inter sese ipsa pugnant. Quid enim possumus hoc agere divinius? Ut optime, secundum naturam affectum esse possit. At quicum ioca seria, ut dicitur, quicum arcana, quicum occulta omnia? Gloriosa ostentatio in constituendo summo bono. Mihi, inquam, qui te id ipsum rogavi? Idemne potest esse dies saepius, qui semel fuit? Huic ego, si negaret quicquam interesse ad beate vivendum quali uteretur victu, concederem, laudarem etiam; \n\n', 1, '2024-11-09 07:16:47', '2024-11-09 07:16:47', NULL),
(67, 'Lorem ipsum dolor sit amet, consectetur adipi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Itaque rursus eadem ratione, qua sum paulo ante usus, haerebitis. Sed erat aequius Triarium aliquid de dissensione nostra iudicare. Sunt autem, qui dicant foedus esse quoddam sapientium, ut ne minus amicos quam se ipsos diligant. Quia, si mala sunt, is, qui erit in iis, beatus non erit. Duo Reges: constructio interrete. Cur ipse Pythagoras et Aegyptum lustravit et Persarum magos adiit? \n\nIta fit ut, quanta differentia est in principiis naturalibus, tanta sit in finibus bonorum malorumque dissimilitudo. Ex eorum enim scriptis et institutis cum omnis doctrina liberalis, omnis historia. Quamquam te quidem video minime esse deterritum. \n\nSummus dolor plures dies manere non potest? Si alia sentit, inquam, alia loquitur, numquam intellegam quid sentiat; Quae similitudo in genere etiam humano apparet. An est aliquid per se ipsum flagitiosum, etiamsi nulla comitetur infamia? Fortemne possumus dicere eundem illum Torquatum? An eum discere ea mavis, quae cum plane perdidiceriti nihil sciat? Virtutis, magnitudinis animi, patientiae, fortitudinis fomentis dolor mitigari solet. Sed erat aequius Triarium aliquid de dissensione nostra iudicare. Bork \n\n', 1, '2024-11-09 07:16:48', '2024-11-09 07:16:48', NULL),
(68, 'Lorem ipsum dolor sit amet, consectetur adipi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cur igitur, cum de re conveniat, non malumus usitate loqui? Qui autem de summo bono dissentit de tota philosophiae ratione dissentit. Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam. Quae cum praeponunt, ut sit aliqua rerum selectio, naturam videntur sequi; Duo Reges: constructio interrete. Disserendi artem nullam habuit. Graecis hoc modicum est: Leonidas, Epaminondas, tres aliqui aut quattuor; Isto modo ne improbos quidem, si essent boni viri. Idem iste, inquam, de voluptate quid sentit? Eaedem res maneant alio modo. Quamquam tu hanc copiosiorem etiam soles dicere. \n\nQuae iam oratio non a philosopho aliquo, sed a censore opprimenda est. Aliena dixit in physicis nec ea ipsa, quae tibi probarentur; Si enim, ut mihi quidem videtur, non explet bona naturae voluptas, iure praetermissa est; Hoc etsi multimodis reprehendi potest, tamen accipio, quod dant. Non igitur potestis voluptate omnia dirigentes aut tueri aut retinere virtutem. Vos autem cum perspicuis dubia debeatis illustrare, dubiis perspicua conamini tollere. \n\nProfectus in exilium Tubulus statim nec respondere ausus; Non est enim vitium in oratione solum, sed etiam in moribus. Aliter homines, aliter philosophos loqui putas oportere? Cur igitur, inquam, res tam dissimiles eodem nomine appellas? Naturales divitias dixit parabiles esse, quod parvo esset natura contenta. Quod totum contra est. \n\n', 1, '2024-11-09 07:16:49', '2024-11-09 07:16:49', NULL),
(69, 'Lorem ipsum dolor sit amet, consectetur a', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Summus dolor plures dies manere non potest? Si qua in iis corrigere voluit, deteriora fecit. Scrupulum, inquam, abeunti; \n\nNonne videmus quanta perturbatio rerum omnium consequatur, quanta confusio? Hanc ergo intuens debet institutum illud quasi signum absolvere. Ex rebus enim timiditas, non ex vocabulis nascitur. Quod ea non occurrentia fingunt, vincunt Aristonem; Quarum ambarum rerum cum medicinam pollicetur, luxuriae licentiam pollicetur. Quis istud possit, inquit, negare? Hic ambiguo ludimur. An, partus ancillae sitne in fructu habendus, disseretur inter principes civitatis, P. \n\nPrimum in nostrane potestate est, quid meminerimus? Sed haec in pueris; Duo Reges: constructio interrete. Huius ego nunc auctoritatem sequens idem faciam. \n\n', 1, '2024-11-09 07:16:50', '2024-11-09 07:16:50', NULL),
(70, 'Lorem ipsum dolor sit amet, consectetur adipisci', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Homines optimi non intellegunt totam rationem everti, si ita res se habeat. Quid est igitur, cur ita semper deum appellet Epicurus beatum et aeternum? Duo Reges: constructio interrete. Deinde disputat, quod cuiusque generis animantium statui deceat extremum. Amicitiam autem adhibendam esse censent, quia sit ex eo genere, quae prosunt. An tu me de L. \n\nUt enim consuetudo loquitur, id solum dicitur honestum, quod est populari fama gloriosum. Illud dico, ea, quae dicat, praeclare inter se cohaerere. Quis enim redargueret? Sin eam, quam Hieronymus, ne fecisset idem, ut voluptatem illam Aristippi in prima commendatione poneret. \n\nNon potes, nisi retexueris illa. Illum mallem levares, quo optimum atque humanissimum virum, Cn. Bork Sed id ne cogitari quidem potest quale sit, ut non repugnet ipsum sibi. \n\n', 1, '2024-11-09 07:16:51', '2024-11-09 07:16:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `group_id`, `created_at`, `updated_at`) VALUES
(35, 'Yuri Kazmierczak', 'qYlgOvs7Kw45ftKrTS@jSG6IP5Iwd_vEF.1mfH', NULL, '$2y$12$rWjq1iGy2QfuJQ3dMztMXebHYzh286XSa3.PfW2cNOKOL8kEOrWAi', NULL, 1, '2024-11-09 07:16:52', '2024-11-09 07:16:52'),
(36, 'Leigha Mayoral', 'LpUY.1-kGf_pNvmDA1VZm@ZaDC-exr9xp.HRf9', NULL, '$2y$12$KwFwvxsTMsea/G/KoPmQ1./Hp1FrlbyA//eopgnkHqEAEyhoTZrPq', NULL, 1, '2024-11-09 07:16:52', '2024-11-09 07:16:52'),
(37, 'Camellia Menjivar', 'ehlPG.-OFOJQW-GDlmwe@uILn5lT4kIymT.pVQo', NULL, '$2y$12$v8MRYnmPSQWFOTcfdoxPSORTRCYznIsXIZbprVNnqXEmIgN.ZvFky', NULL, 1, '2024-11-09 07:16:52', '2024-11-09 07:16:52'),
(38, 'Yuri Klemp', 'lAjSqzNybK91myHF@QQoau7PKQ2yZ.NYco', NULL, '$2y$12$18tghEt76oFdpoilWUADjOyJgTOt.0nguvPJ37f77TRX4jE4N.KOm', NULL, 1, '2024-11-09 07:16:52', '2024-11-09 07:16:52'),
(39, 'Sharie Mischke', 'fJIYbr34ov@zjDHCJbY9Jn8_o.aGCu', NULL, '$2y$12$99VE4TxPW/44HVMcQwtuguzKVw1Y/3kFEtCEtp6pX8q15w5xAxb62', NULL, 1, '2024-11-09 07:16:53', '2024-11-09 07:16:53'),
(40, 'Raleigh Drews', 'aSMe.lrxjoomih_HG@rVM.nyFm', NULL, '$2y$12$Z7IdsmJQ1eLLTZJppUPI4uoQCA5c6zfdBFBapQqiaVOy6XBWtBFZO', NULL, 1, '2024-11-09 07:16:53', '2024-11-09 07:16:53'),
(41, 'Stephania Latson', 'qSHqsL7PD6F7tc9X@eMTLXqyfc.m1vy', NULL, '$2y$12$q5QZIf.LM1qubasStanMqeGXHyRiDaak/J9S1miKjUWw1.jGQtjKy', NULL, 1, '2024-11-09 07:16:53', '2024-11-09 07:16:53'),
(42, 'Buffy Michaud', 'VQvJnIwpYoFAcjppEs6aRh@qBsSGtohh.CjUA', NULL, '$2y$12$aAI/UXApE0GUQpAAUCWrMeyl24Wmk1ZNvLmopM45MDLEQYMMkFshO', NULL, 1, '2024-11-09 07:16:53', '2024-11-09 07:16:53'),
(43, 'Clora Paris', 'iOUqJ8SvRO2eQ61nIB.V8GS@msBrP20UNdvKk.SdB8', NULL, '$2y$12$m55jB5cpciOjv1ZGXgdHteP6FfX3/LP581WNbWO10Rr7eE3JrO39C', NULL, 1, '2024-11-09 07:16:54', '2024-11-09 07:16:54'),
(44, 'Tyisha Schildgen', 'yKKjO5AsGxik3FbUlt@JJO5kiGnxTVRJg.uGp7', NULL, '$2y$12$/ArIC2FDfUWQWm44ttgeNOmV4Nl/j/k.2NTh5MiqWxktBjHnLjBTC', NULL, 1, '2024-11-09 07:16:54', '2024-11-09 07:16:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD KEY `products_created_at_updated_at_index` (`created_at`,`updated_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
