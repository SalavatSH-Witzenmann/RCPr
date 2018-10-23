using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Data.Entity.Core.Objects;
using System.Data.Entity;
using System.Data;
using System.Collections.ObjectModel;

namespace RCProject
{
    /// <summary>
    /// Логика взаимодействия для DataBase.xaml
    /// </summary>
    public partial class DataBase : Window
    {

        public DataBase()
        {
            InitializeComponent();
            ThCS_kn.PreviewTextInput += new TextCompositionEventHandler(text_input_mask);
        }


        private void SignClick(object sender, RoutedEventArgs e) //В разделе Кольцо комментарии к заполнению внешнего диаметра
        {
            MessageBox.Show("Пожалуйста обратите внимание, вводить необходимо наружный диаметр заготовки до операции обжатия/развальцовки," +
                "т.е. наружный диаметр трубы и толщину стенки трубы (не учитывая всевозможных операции)", "Note!");
        }

        #region check_box для выбора доп операции в разделе Гофрированная оболочка
        private void chamfer_check(object sender, RoutedEventArgs e)
        {
            Chamfer.IsEnabled = true;
        }
        private void chamfer_uncheck(object sender, RoutedEventArgs e)
        {
            Chamfer.IsEnabled = false;
        }

        private void fillet_check(object sender, RoutedEventArgs e)
        {
            Fillet.IsEnabled = true;
        }
        private void fillet_uncheck(object sender, RoutedEventArgs e)
        {
            Fillet.IsEnabled = false;
        }

        private void compression_check(object sender, RoutedEventArgs e)
        {
            Compression.IsEnabled = true;
        }
        private void compression_uncheck(object sender, RoutedEventArgs e)
        {
            Compression.IsEnabled = false;
        }

        private void flaring_check(object sender, RoutedEventArgs e)
        {
            Flaring.IsEnabled = true;
        }
        private void flaring_uncheck(object sender, RoutedEventArgs e)
        {
            Flaring.IsEnabled = false;
        }

        private void boring_check(object sender, RoutedEventArgs e)
        {
            Boring.IsEnabled = true;
        }
        private void boring_uncheck(object sender, RoutedEventArgs e)
        {
            Boring.IsEnabled = false;
        }

        private void hole_check(object sender, RoutedEventArgs e)
        {
            Hole.IsEnabled = true;
        }
        private void hole_uncheck(object sender, RoutedEventArgs e)
        {
            Hole.IsEnabled = false;
        }

        private void thread_check(object sender, RoutedEventArgs e)
        {
            Thread.IsEnabled = true;
        }
        private void thread_uncheck(object sender, RoutedEventArgs e)
        {
            Thread.IsEnabled = false;
        }

        private void note_check(object sender, RoutedEventArgs e)
        {
            Note.IsEnabled = true;
        }
        private void note_uncheck(object sender, RoutedEventArgs e)
        {
            Note.IsEnabled = false;
        }

        #endregion

        #region секция для заполнения БД Гибкая часть
        private void filling_click(object sender, RoutedEventArgs e)
        {
            var context = new MetHoseContainer();
            var CorrugSheath = new tCorrugSheath { Type = CorrugSheath_kn.SelectedItem.ToString().Remove(0, 38),
                DN = Int16.Parse(DNCorSh_kn.SelectedItem.ToString().Remove(0, 40)),
                PN = Double.Parse(PNCorSh_kn.SelectedItem.ToString().Remove(0, 40)), Dout = Double.Parse(DoutCS_kn.Text),
                Din = Double.Parse(DinCS_kn.Text), TPch = Double.Parse(TPchCS_kn.Text),
                Dtop = Double.Parse(DtopCS_kn.Text), Dbot = Double.Parse(DbotCS_kn.Text),
                Rmin = Int16.Parse(RminCS_kn.Text), Rn = Int16.Parse(RnCS_kn.Text),
                Th = Double.Parse(ThCS_kn.Text), Description = DescriptionCS_kn.Text,
                Executor = ExecutorCS_kn.Text, tMaterialID = Int16.Parse(IDMaterailCS_kn.Text) }; //учитывать локализацию для типа string
            context.tCorrugSheathSet.Add(CorrugSheath);
            context.SaveChanges();
        }
        #endregion

        #region секция для заполнения БД Оплетка
        private void BraidDB_filling_click(object sender, RoutedEventArgs e)
        {


            var context = new MetHoseContainer();
            var BraidDB_filling = new tBraid
            {
                DN = Int16.Parse(DNBraid_kn.SelectedItem.ToString().Remove(0, 40)),
                TypeBr = TypeBraid_kn.SelectedItem.ToString().Remove(0, 38),
                Dout = Double.Parse(Dout_braid_kn.Text),
                Din = Double.Parse(Din_braid_kn.Text),
                NumbStrands = Int16.Parse(NumbStrands_kn.Text),
                NymbThreads = Int16.Parse(NumbThreads_kn.Text),
                DThreads = Double.Parse(Dthreads_kn.Text),
                AngleWeaving = Double.Parse(AngleWeaving_kn.Text),
                Executor = ExecutorBraid_kn.Text,
                Description = DescriptionBraid_kn.Text,
                tMaterialID = Convert.ToInt16(IDMaterialBraid_kn.Text)
            };
            context.tBraidSet.Add(BraidDB_filling);
            context.SaveChanges();
        }
        #endregion

        #region секция для заполнения БД Стакана
        private void ButtGlass_filling_click(object sender, RoutedEventArgs e)
        {
            bool checkBoxAtypName;
            if (ATypicalGlassCB.IsChecked == true) { checkBoxAtypName = true; }
            else { checkBoxAtypName = false; }

            string ATypGlassName;
            if (ATypicalNameGlass.Text != null) { ATypGlassName = ATypicalNameGlass.Text; }
               else { ATypGlassName = null; }

            
            double DinGlassAfter;
            if (nDinGlassAfterOper_kn.IsEnabled == true) { DinGlassAfter = Double.Parse(nDinGlassAfterOper_kn.Text); }
                else { DinGlassAfter = -1; };
               
            
            
            bool ExpRing;
            bool ComprRing;
            if (ExpanRing_Glass.IsChecked == true & ComprRing_Glass.IsChecked ==false) { ExpRing = true; ComprRing = false;}
               else if (ExpanRing_Glass.IsChecked == false & ComprRing_Glass.IsChecked == true) { ExpRing = false; ComprRing = true;}
                    else { ExpRing = false; ComprRing = false; }
           

            var context = new MetHoseContainer();
            var glass_filling = new tGlass
            {
                DN = Int16.Parse(nDNGlass_kn.SelectedItem.ToString().Remove(0, 40)),
                Name = nTypeNameGlass_kn.SelectedItem.ToString().Remove(0, 38),
                UntypicalName = ATypGlassName,
                UntypicalCheck = checkBoxAtypName,
                Dout = Double.Parse(nDoutGlass_kn.Text),
                Th = Double.Parse(nThGlass_kn.Text),
                Ls = Double.Parse(nLsGlass_kn.Text),
                ExpanRing = ExpRing,
                CompressRing = ComprRing,
                Din = DinGlassAfter,
                Executor = nExecutorGlass_kn.Text,
                Description = nDescriptionGlass_kn.Text,
                tMaterialID = Int16.Parse(IDMaterialGlass_kn.Text)
            };
            context.tGlassSet.Add(glass_filling);
            context.SaveChanges();
        }
        #endregion

        #region секция для заполнения БД Кольцо(П12 и др.)
        private void ButtFillRingBD_click(object sender, RoutedEventArgs e)
        {
            string SideWeldRing;
            if (RightSideWelding_kn.IsChecked == true) { SideWeldRing = "R"; }
            else if (LeftSideWelding_kn.IsChecked == true) { SideWeldRing = "L"; }
            else { SideWeldRing = null; }
                        
            var context = new MetHoseContainer();
            var GlassFillingBD = new tRing
            {
                DN = Int16.Parse(nDNRing_kn.SelectedItem.ToString().Remove(0,40)),
                PN = Double.Parse(nPNRing_kn.SelectedItem.ToString().Remove(0,40)),
                Name = nNameRing1_kn.Text,
                Designation= nNameRing2_kn.Text,
                Dout = Double.Parse(nDoutRing_kn.Text),
                Th=Double.Parse(NThRing_kn.Text),
                LN=Double.Parse(nLNRing_kn.Text),
                WeldingSide = SideWeldRing,
                ChamExtR=Double.Parse(nChamfExtR_kn.Text),
                ChamExtL=Double.Parse(nChamfExtL_kn.Text),
                ChamIntR=Double.Parse(nChamfIntR_kn.Text),
                ChamIntL=Double.Parse(nChamfIntL_kn.Text),
                AngleExtR=Double.Parse(nAngleExtR_kn.Text),
                AngleExtL=Double.Parse(nAngleExtL_kn.Text),
                AngleIntR=Double.Parse(nAngleIntR_kn.Text),
                AngleIntL=Double.Parse(nAngleIntL_kn.Text),
                BoringExtR=Double.Parse(nBoringExtR_kn.Text),
                BoringExtL=Double.Parse(nBoringEntL_kn.Text),
                BoringIntR=Double.Parse(nBoringIntR_kn.Text),
                AngleCoupExtR=Double.Parse(nAngleCoupExtR_kn.Text),
                AngleCoupExtL=Double.Parse(nAngleCoupExtL_kn.Text),
                AngleCoupIntR=Double.Parse(nAngleCoupIntR_kn.Text),
                AngleCoupIntL=Double.Parse(nAngleCoupIntL_kn.Text),
                Description=nDescriptionRing_kn.Text,
                Executor = nExecutorRing_kn.Text,
                tMaterialID = Convert.ToInt16(IDMaterialRing_kn.Text)
            };
            context.tRingSet.Add(GlassFillingBD);
            context.SaveChanges();
        }
        #endregion

        #region секция для заполнения БД Материал

        private void matdb_filling_click(object sender, RoutedEventArgs e)
        {
            
            #region секция определения длятипа структуры стали
            string StructType;
            bool CheckAnnealedCond;
            bool CheckNormalState;
            if (nAnnealedCond_kn.IsChecked == true && nNormalizeState.IsChecked == false)
            {
                StructType = nTypeSteelStructAnnealed_kn.SelectedItem.ToString().Remove(0, 38);
                CheckAnnealedCond = true;
                CheckNormalState = false;
            }
            else if (nAnnealedCond_kn.IsChecked == false && nNormalizeState.IsChecked == true)
            {
                StructType = nTypeSteelStructNorm_kn.SelectedItem.ToString().Remove(0, 38);
                CheckAnnealedCond = false;
                CheckNormalState = true;
            }
            else if (nAnnealedCond_kn.IsChecked == true && nNormalizeState.IsChecked == true)
            {
                MessageBox.Show("Не выбирайте два CheckBox-а: сталь в отоженном состоянии и сталь в нормализованном состоянии одновременно. Заполнение БД не произойдет", "ATTENTION!!!");
                return;
            }
            else 
            {
                var result = (int) MessageBox.Show("Не выбраны CheckBox-ы состояния стали, при данном варианте заполнение БД произойдет но не рекомендуется. " +
                    "Нажмите НЕТ если хотите выбрать какое либо состояние. Нажмите ДА если Вам по барабану.", "ATTENTION!!!",
                    button: MessageBoxButton.YesNo);
                if(result==2 || result ==7) { return; }
                StructType = null;
                CheckAnnealedCond = false;
                CheckNormalState = false;
            }
            #endregion

            #region секция определения типа стали
            string typeStPurp;
            string typeStPurp2;
            if (nPurposeSteel_kn.SelectedIndex == 0)
            {
                typeStPurp = nPurposeSteel_kn.SelectedItem.ToString().Remove(0, 38);
                typeStPurp2 = nPurposeSteelConstr_kn.SelectedItem.ToString().Remove(0, 38);
            } else if (nPurposeSteel_kn.SelectedIndex == 1)
            {
                typeStPurp = nPurposeSteel_kn.SelectedItem.ToString().Remove(0, 38);
                typeStPurp2 = nPurposeSteelInstr_kn.SelectedItem.ToString().Remove(0, 38);
            } else if (nPurposeSteel_kn.SelectedIndex == 2)
            {
                typeStPurp = nPurposeSteel_kn.SelectedItem.ToString().Remove(0, 38);
                typeStPurp2 = nPurposeSteelSpec_kn.SelectedItem.ToString().Remove(0, 38);
            } else
            {
                typeStPurp = "No Condition";
                typeStPurp2 = "No Condition";
            }
            #endregion
            
            string QSteel = nQualitySteel_kn.SelectedItem.ToString().Remove(0, 38);
            string DegDeox = nDegreeDeoxid_kn.SelectedItem.ToString().Remove(0, 38);

            #region секция CheckBox (3 позиции: трудносвариваемая, флокеночувствительность, отпуск. хрупкость)
            bool TempBrit;
            bool DiffWeld;
            bool FlxSens;
            if (nTempBrittleness_kn.IsChecked == true) { TempBrit = true; } else { TempBrit = false; }
            if (nDifficultWeld_kn.IsChecked == true) { DiffWeld = true; } else { DiffWeld = false; }
            if (nFlxenosensitivity_kn.IsChecked == true) { FlxSens = true; } else { FlxSens = false; }
            #endregion
            
            #region создание и заполнение БД материалов информацией
            var context = new MetHoseContainer();
            var MatDB_filling = new tMaterial
            {
                NameDIN = nDIN_kn.Text,
                NameGOST = nGOST_kn.Text,
                NameAISI = nAISI_kn.Text,
                NameJIS = nJIS_kn.Text,
                NameBS = nBS_kn.Text,
                NameAFNOR = nAFNOR_kn.Text,
                ContFe = Double.Parse(nConFe_kn.Text),
                ContC = Double.Parse(nConC_kn.Text),
                ContSi = Double.Parse(nConSi_kn.Text),
                ContCr = Double.Parse(nConCr_kn.Text),
                ContNi = Double.Parse(nConNi_kn.Text),
                ContNb = Double.Parse(nConNb_kn.Text),
                ContTa = Double.Parse(nConTa_kn.Text),
                ContW = Double.Parse(nConW_kn.Text),
                ContMn = Double.Parse(nConMn_kn.Text),
                ContCu = Double.Parse(nConCu_kn.Text),
                ContSe = Double.Parse(nConSe_kn.Text),
                ContCo = Double.Parse(nConCo_kn.Text),
                ContMo = Double.Parse(nConMo_kn.Text),
                ContBi = Double.Parse(nConBi_kn.Text),
                ContP = Double.Parse(nConP_kn.Text),
                ContB = Double.Parse(nConB_kn.Text),
                ContTi = Double.Parse(nConTi_kn.Text),
                ContV = Double.Parse(nConV_kn.Text),
                ContZr = Double.Parse(nConZr_kn.Text),
                ContAl = Double.Parse(nConAl_kn.Text),
                ContCd = Double.Parse(nConCd_kn.Text),
                ContAs = Double.Parse(nConAs_kn.Text),
                ContS = Double.Parse(nConS_kn.Text),
                ContCe = Double.Parse(nConCe_kn.Text),
                ContA = Double.Parse(nConA_kn.Text),
                ContSn = Double.Parse(nConSn_kn.Text),
                ContPb = Double.Parse(nConPb_kn.Text),
                ContU = Double.Parse(nConU_kn.Text),
                ContO = Double.Parse(nConO_kn.Text),
                ContH = Double.Parse(nConH_kn.Text),
                ContPt = Double.Parse(nConPt_kn.Text),
                ContAu = Double.Parse(nConAu_kn.Text),
                ContNa = Double.Parse(nConNa_kn.Text),
                ContMg = Double.Parse(nConMg_kn.Text),
                ContGe = Double.Parse(nConGe_kn.Text),
                ContRe = Double.Parse(nConRe_kn.Text),
                ContAr = Double.Parse(nConAr_kn.Text),
                ContLi = Double.Parse(nConLi_kn.Text),
                ContIr = Double.Parse(nConIr_kn.Text),
                ContPd = Double.Parse(nConPd_kn.Text),
                YieldStren = Double.Parse(nYieldStren_kn.Text),
                StrenLimit = Double.Parse(nStrenLimit_kn.Text),
                Hardness = Int16.Parse(nHardness_kn.Text),
                YoungMod = Double.Parse(nYoungMod_kn.Text),
                Density = Double.Parse(nDensity_kn.Text),
                ImpTough = Double.Parse(nImpTough_kn.Text),
                ShearModul = Double.Parse(nShearModul_kn.Text),
                PoissonRatio = Double.Parse(nPoissonRatio_kn.Text),
                CoefTherConduct = Double.Parse(nCoefTherConduct_kn.Text),
                CoefHeatCapacity = Double.Parse(nCoefHeatCapacity_kn.Text),
                DifficultWeld = DiffWeld,
                Flxenosensitivity = FlxSens,
                TempBrittleness = TempBrit,
                AnnealedCond = CheckAnnealedCond,
                NormalizState = CheckNormalState,
                TypeStruct = StructType,
                PurposeSteel = typeStPurp,
                PurposeSteel2 = typeStPurp2,
                QualitySteel=QSteel,
                DegreeDeoxid=DegDeox
            };
            context.tMaterialSet.Add(MatDB_filling);
            context.SaveChanges();
            #endregion
            
        }
        #endregion

        private void DataBase_loaded(object sender, RoutedEventArgs e)
        {
            var context = new MetHoseContainer();
            var corsheath = context.tCorrugSheathSet.ToList();
            var braid = context.tBraidSet.ToList();
            var glass = context.tGlassSet.ToList();
            var ring = context.tRingSet.ToList();
            var material = context.tMaterialSet.ToList();
            DateGridCS.ItemsSource = corsheath;
            DataGridBraid.ItemsSource = braid;
            DataGridGlass.ItemsSource = glass;
            DataGridRing.ItemsSource = ring;
            DataGridMaterial.ItemsSource = material;

            context.tMaterialSet.Load();
            MaterialCorSh_kn.ItemsSource = context.tMaterialSet.Local.ToBindingList();            
            MaterialBraid_kn.ItemsSource = context.tMaterialSet.Local.ToBindingList();
            MaterialGlass_kn.ItemsSource = context.tMaterialSet.Local.ToBindingList();
            MaterialRing_kn.ItemsSource = context.tMaterialSet.Local.ToBindingList();
        }

        #region Checked and Unchecked для CheckBox определяющих нормализованное и отоженное состояние

        private void nAnnealedCond_kn_Checked(object sender, RoutedEventArgs e)
        {
            nTypeSteelStructAnnealed_kn.IsEnabled = true;
        }
        private void nAnnealedCond_kn_Unchecked(object sender, RoutedEventArgs e)
        {
            nTypeSteelStructAnnealed_kn.IsEnabled = false;
        }

        private void nNormalizeState_Checked(object sender, RoutedEventArgs e)
        {
            nTypeSteelStructNorm_kn.IsEnabled = true;
        }
        private void nNormalizeState_Unchecked(object sender, RoutedEventArgs e)
        {
            nTypeSteelStructNorm_kn.IsEnabled = false;
        }

        #endregion

        #region Для ComboBox - тип стали. Определяет поведение при выборе конкретного элемента
        private void nPurposeSteel_kn_constr(object sender, RoutedEventArgs e)
        {
            nPurposeSteelConstr_kn.IsEnabled = true;
            nPurposeSteelConstr_kn.Visibility = Visibility.Visible;
            nPurposeSteelInstr_kn.IsEnabled = false;
            nPurposeSteelInstr_kn.Visibility = Visibility.Hidden;
            nPurposeSteelSpec_kn.IsEnabled = false;
            nPurposeSteelSpec_kn.Visibility = Visibility.Hidden;
        }

        private void nPurposeSteel_kn_instr(object sender, RoutedEventArgs e)
        {
            nPurposeSteelConstr_kn.IsEnabled = false;
            nPurposeSteelConstr_kn.Visibility = Visibility.Hidden;
            nPurposeSteelInstr_kn.IsEnabled = true;
            nPurposeSteelInstr_kn.Visibility = Visibility.Visible;
            nPurposeSteelSpec_kn.IsEnabled = false;
            nPurposeSteelSpec_kn.Visibility = Visibility.Hidden;
        }

        private void nPurposeSteel_kn_spec(object sender, RoutedEventArgs e)
        {
            nPurposeSteelConstr_kn.IsEnabled = false;
            nPurposeSteelConstr_kn.Visibility = Visibility.Hidden;
            nPurposeSteelInstr_kn.IsEnabled = false;
            nPurposeSteelInstr_kn.Visibility = Visibility.Hidden;
            nPurposeSteelSpec_kn.IsEnabled = true;
            nPurposeSteelSpec_kn.Visibility = Visibility.Visible;
        }


        #endregion

        #region checked and unchecked для CheckBox определяющего нетиповое имя в разделе Стакан
        private void ATypicalGlassCB_check(object sender, RoutedEventArgs e)
        {
            ATypicalNameGlass.IsEnabled = true;
        }
        private void ATypicalGlassCB_uncheck(object sender, RoutedEventArgs e)
        {
            ATypicalNameGlass.IsEnabled = false;
            ATypicalNameGlass.Text = null;
        }
        #endregion

        private void ButNullRadioBut_click(object sender, RoutedEventArgs e)   //Очищает в разделе стакан внутренний диаметр и снимает RadioButton
        {
            ExpanRing_Glass.IsChecked = false;
            ComprRing_Glass.IsChecked = false;
            nDinGlassAfterOper_kn.Text = null;
            nDinGlassAfterOper_kn.IsEnabled = false;
        }

        private void DinRing_Glass(object sender, RoutedEventArgs e)           //На данное событие подписаны RadioButton в разделе Стакан. Включает TextBlock для внутреннего диаметра 
        {
            nDinGlassAfterOper_kn.IsEnabled = true;
        }

        private void NameMaterial_click(object sender, RoutedEventArgs e)      //пояснения по заполнению полей Наименование в разделе Материал
        {
            MessageBox.Show("Для унификации заполнения и минимизации дальнейших ошибок, просьба заполнять данные поля следующим образом:" +
                "стали у которых наименование типа: Сталь 3 и т.д - вносить только цифру 3, стали нержавеющие и т.д. заполнять только обозначение по ГОСТ: 12Х18Н10Т, 10Х17Н13М2. Для AISI 316 - заполнять 316." +
                "В графу GOST вносить только цифры и буквы используя КИРИЛЛИЦУ!!! В остальные графы, наименование материала прописываем используя цифры и буквы, однако тип букв - ЛАТИНИЦА!!!", "Note!");
        }

        #region Раздел для создания масок заполнения форм

        private void text_input_mask(object sender, TextCompositionEventArgs e)  // в разделе Гофрированная оболочка для толщины
        {
            if (Char.IsDigit(e.Text, 0) || e.Text == ",") { e.Handled = false; } else { e.Handled = true; MessageBox.Show("Число либо запятая!!!"); } 
        }

        private void Click_RingName(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Графа Наименование кольца заполняется соответственно именем, по типу - Кольцо, Оболочка, Втулка."+
                 "Графа Обозначение кольца заполняется по типу - П12 DN32, П.65x1x36(x - латинская буква), RS325.001 DN25","Note!");           
        }

        #endregion

        /*private void MaterialCorSh_kn_SelectionChanged(object sender, SelectionChangedEventArgs e)   //выбор в разделе гофрированной оболочки ListView с элементами - На данный момент консервация
        {
            var strk = MaterialCorSh_kn.SelectedItem.ToString();
            MessageBox.Show(strk);
        }*/
    }
}
