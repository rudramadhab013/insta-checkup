import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Image.asset(
                  'assets/images/WhatsApp_Image_2024-09-07_at_23.11.13_a125acfb.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            )
          : const StartWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Image.asset(
                      'assets/images/WhatsApp_Image_2024-09-07_at_23.11.13_a125acfb.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : const StartWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'fever1',
          path: '/fever1',
          builder: (context, params) => const Fever1Widget(),
        ),
        FFRoute(
          name: 'cough',
          path: '/cough',
          builder: (context, params) => const CoughWidget(),
        ),
        FFRoute(
          name: 'sweting',
          path: '/sweting',
          builder: (context, params) => const SwetingWidget(),
        ),
        FFRoute(
          name: 'NauseaorVomiting',
          path: '/nauseaorVomiting',
          builder: (context, params) => const NauseaorVomitingWidget(),
        ),
        FFRoute(
          name: 'Rash',
          path: '/rash',
          builder: (context, params) => const RashWidget(),
        ),
        FFRoute(
          name: 'Intermittent',
          path: '/intermittent',
          builder: (context, params) => const IntermittentWidget(),
        ),
        FFRoute(
          name: 'Persistent',
          path: '/persistent',
          builder: (context, params) => const PersistentWidget(),
        ),
        FFRoute(
          name: 'SoreThroat',
          path: '/soreThroat',
          builder: (context, params) => const SoreThroatWidget(),
        ),
        FFRoute(
          name: 'MuscleorJointPain',
          path: '/muscleorJointPain',
          builder: (context, params) => const MuscleorJointPainWidget(),
        ),
        FFRoute(
          name: 'chills',
          path: '/chills',
          builder: (context, params) => const ChillsWidget(),
        ),
        FFRoute(
          name: 'SevereHeadache',
          path: '/severeHeadache',
          builder: (context, params) => const SevereHeadacheWidget(),
        ),
        FFRoute(
          name: 'Dengue',
          path: '/dengue',
          builder: (context, params) => const DengueWidget(),
        ),
        FFRoute(
          name: 'Malaria',
          path: '/malaria',
          builder: (context, params) => const MalariaWidget(),
        ),
        FFRoute(
          name: 'Hyperthyroidism',
          path: '/hyperthyroidism',
          builder: (context, params) => const HyperthyroidismWidget(),
        ),
        FFRoute(
          name: 'TuberculosisTB',
          path: '/tuberculosisTB',
          builder: (context, params) => const TuberculosisTBWidget(),
        ),
        FFRoute(
          name: 'Meningitis',
          path: '/meningitis',
          builder: (context, params) => const MeningitisWidget(),
        ),
        FFRoute(
          name: 'PersistentCough',
          path: '/persistentCough',
          builder: (context, params) => const PersistentCoughWidget(),
        ),
        FFRoute(
          name: 'TicklingSensation',
          path: '/ticklingSensation',
          builder: (context, params) => const TicklingSensationWidget(),
        ),
        FFRoute(
          name: 'DryIrritating',
          path: '/dryIrritating',
          builder: (context, params) => const DryIrritatingWidget(),
        ),
        FFRoute(
          name: 'CoughwithMucus',
          path: '/coughwithMucus',
          builder: (context, params) => const CoughwithMucusWidget(),
        ),
        FFRoute(
          name: 'CoughwithChest',
          path: '/coughwithChest',
          builder: (context, params) => const CoughwithChestWidget(),
        ),
        FFRoute(
          name: 'CoughwithWheezing',
          path: '/coughwithWheezing',
          builder: (context, params) => const CoughwithWheezingWidget(),
        ),
        FFRoute(
          name: 'Headache',
          path: '/headache',
          builder: (context, params) => const HeadacheWidget(),
        ),
        FFRoute(
          name: 'DullAching',
          path: '/dullAching',
          builder: (context, params) => const DullAchingWidget(),
        ),
        FFRoute(
          name: 'SensationofTightness',
          path: '/sensationofTightness',
          builder: (context, params) => const SensationofTightnessWidget(),
        ),
        FFRoute(
          name: 'Throbbing',
          path: '/throbbing',
          builder: (context, params) => const ThrobbingWidget(),
        ),
        FFRoute(
          name: 'SensitivitytoLigh',
          path: '/sensitivitytoLigh',
          builder: (context, params) => const SensitivitytoLighWidget(),
        ),
        FFRoute(
          name: 'NauseaorVomitingAcc',
          path: '/nauseaorVomitingAcc',
          builder: (context, params) => const NauseaorVomitingAccWidget(),
        ),
        FFRoute(
          name: 'PainorPressure',
          path: '/painorPressure',
          builder: (context, params) => const PainorPressureWidget(),
        ),
        FFRoute(
          name: 'NasalCongestion',
          path: '/nasalCongestion',
          builder: (context, params) => const NasalCongestionWidget(),
        ),
        FFRoute(
          name: 'SevereBurning',
          path: '/severeBurning',
          builder: (context, params) => const SevereBurningWidget(),
        ),
        FFRoute(
          name: 'Fatigue',
          path: '/fatigue',
          builder: (context, params) => const FatigueWidget(),
        ),
        FFRoute(
          name: 'PersistentTiredness',
          path: '/persistentTiredness',
          builder: (context, params) => const PersistentTirednessWidget(),
        ),
        FFRoute(
          name: 'LackofEnergy',
          path: '/lackofEnergy',
          builder: (context, params) => const LackofEnergyWidget(),
        ),
        FFRoute(
          name: 'FatigueLasting',
          path: '/fatigueLasting',
          builder: (context, params) => const FatigueLastingWidget(),
        ),
        FFRoute(
          name: 'FatiguewithMuscle',
          path: '/fatiguewithMuscle',
          builder: (context, params) => const FatiguewithMuscleWidget(),
        ),
        FFRoute(
          name: 'DifficultyConcentr',
          path: '/difficultyConcentr',
          builder: (context, params) => const DifficultyConcentrWidget(),
        ),
        FFRoute(
          name: 'FeelingOverwhelm',
          path: '/feelingOverwhelm',
          builder: (context, params) => const FeelingOverwhelmWidget(),
        ),
        FFRoute(
          name: 'Sleep-related',
          path: '/sleepRelated',
          builder: (context, params) => const SleepRelatedWidget(),
        ),
        FFRoute(
          name: 'WakingUpFeeling',
          path: '/wakingUpFeeling',
          builder: (context, params) => const WakingUpFeelingWidget(),
        ),
        FFRoute(
          name: 'BodyAches',
          path: '/bodyAches',
          builder: (context, params) => const BodyAchesWidget(),
        ),
        FFRoute(
          name: 'GeneralizedBody',
          path: '/generalizedBody',
          builder: (context, params) => const GeneralizedBodyWidget(),
        ),
        FFRoute(
          name: 'iiFatiguewithBodyAches',
          path: '/iiFatiguewithBodyAches',
          builder: (context, params) => const IiFatiguewithBodyAchesWidget(),
        ),
        FFRoute(
          name: 'SoreMusclesaf',
          path: '/soreMusclesaf',
          builder: (context, params) => const SoreMusclesafWidget(),
        ),
        FFRoute(
          name: 'iiMuscleStiffness',
          path: '/iiMuscleStiffness',
          builder: (context, params) => const IiMuscleStiffnessWidget(),
        ),
        FFRoute(
          name: 'PaininKneesElb',
          path: '/paininKneesElb',
          builder: (context, params) => const PaininKneesElbWidget(),
        ),
        FFRoute(
          name: 'StiffnessinJoin',
          path: '/stiffnessinJoin',
          builder: (context, params) => const StiffnessinJoinWidget(),
        ),
        FFRoute(
          name: 'LowerBack',
          path: '/lowerBack',
          builder: (context, params) => const LowerBackWidget(),
        ),
        FFRoute(
          name: 'upperBackorNe',
          path: '/upperBackorNe',
          builder: (context, params) => const UpperBackorNeWidget(),
        ),
        FFRoute(
          name: 'Sorehroat',
          path: '/sorehroat',
          builder: (context, params) => const SorehroatWidget(),
        ),
        FFRoute(
          name: 'SractchyorItch',
          path: '/sractchyorItch',
          builder: (context, params) => const SractchyorItchWidget(),
        ),
        FFRoute(
          name: 'ThroatIrritationdue',
          path: '/throatIrritationdue',
          builder: (context, params) => const ThroatIrritationdueWidget(),
        ),
        FFRoute(
          name: 'SevereSoreThr',
          path: '/severeSoreThr',
          builder: (context, params) => const SevereSoreThrWidget(),
        ),
        FFRoute(
          name: 'iiSwollenTonsils',
          path: '/iiSwollenTonsils',
          builder: (context, params) => const IiSwollenTonsilsWidget(),
        ),
        FFRoute(
          name: 'BacterialThroa',
          path: '/bacterialThroa',
          builder: (context, params) => const BacterialThroaWidget(),
        ),
        FFRoute(
          name: 'persistentSore',
          path: '/persistentSore',
          builder: (context, params) => const PersistentSoreWidget(),
        ),
        FFRoute(
          name: 'AccompaniedbyHoarseness',
          path: '/accompaniedbyHoarseness',
          builder: (context, params) => const AccompaniedbyHoarsenessWidget(),
        ),
        FFRoute(
          name: 'ViralThroatInfec',
          path: '/viralThroatInfec',
          builder: (context, params) => const ViralThroatInfecWidget(),
        ),
        FFRoute(
          name: 'Nauseaoromiting',
          path: '/nauseaoromiting',
          builder: (context, params) => const NauseaoromitingWidget(),
        ),
        FFRoute(
          name: 'MildNausea',
          path: '/mildNausea',
          builder: (context, params) => const MildNauseaWidget(),
        ),
        FFRoute(
          name: 'SevereNausea',
          path: '/severeNausea',
          builder: (context, params) => const SevereNauseaWidget(),
        ),
        FFRoute(
          name: 'PersistentNausea',
          path: '/persistentNausea',
          builder: (context, params) => const PersistentNauseaWidget(),
        ),
        FFRoute(
          name: 'vomiting',
          path: '/vomiting',
          builder: (context, params) => const VomitingWidget(),
        ),
        FFRoute(
          name: 'Diarrhea',
          path: '/diarrhea',
          builder: (context, params) => const DiarrheaWidget(),
        ),
        FFRoute(
          name: 'AcuteDiarrhea',
          path: '/acuteDiarrhea',
          builder: (context, params) => const AcuteDiarrheaWidget(),
        ),
        FFRoute(
          name: 'ChronicDiarrhea',
          path: '/chronicDiarrhea',
          builder: (context, params) => const ChronicDiarrheaWidget(),
        ),
        FFRoute(
          name: 'DiarrheawithCrampi',
          path: '/diarrheawithCrampi',
          builder: (context, params) => const DiarrheawithCrampiWidget(),
        ),
        FFRoute(
          name: 'DiarrheawithFever',
          path: '/diarrheawithFever',
          builder: (context, params) => const DiarrheawithFeverWidget(),
        ),
        FFRoute(
          name: 'TravelersDiarrhea',
          path: '/travelersDiarrhea',
          builder: (context, params) => const TravelersDiarrheaWidget(),
        ),
        FFRoute(
          name: 'ShortnessofBreath',
          path: '/shortnessofBreath',
          builder: (context, params) => const ShortnessofBreathWidget(),
        ),
        FFRoute(
          name: 'MildShortnessofBreat',
          path: '/mildShortnessofBreat',
          builder: (context, params) => const MildShortnessofBreatWidget(),
        ),
        FFRoute(
          name: 'PersistentShortnessofBreath',
          path: '/persistentShortnessofBreath',
          builder: (context, params) => const PersistentShortnessofBreathWidget(),
        ),
        FFRoute(
          name: 'ShortnessofBreathwithWheezing',
          path: '/shortnessofBreathwithWheezing',
          builder: (context, params) => const ShortnessofBreathwithWheezingWidget(),
        ),
        FFRoute(
          name: 'ShorsofBrhwthChestPain',
          path: '/shorsofBrhwthChestPain',
          builder: (context, params) => const ShorsofBrhwthChestPainWidget(),
        ),
        FFRoute(
          name: 'ShortnessofBreathwithFever',
          path: '/shortnessofBreathwithFever',
          builder: (context, params) => const ShortnessofBreathwithFeverWidget(),
        ),
        FFRoute(
          name: 'ChestPainorDiscomfort',
          path: '/chestPainorDiscomfort',
          builder: (context, params) => const ChestPainorDiscomfortWidget(),
        ),
        FFRoute(
          name: 'MildChestDiscomfort',
          path: '/mildChestDiscomfort',
          builder: (context, params) => const MildChestDiscomfortWidget(),
        ),
        FFRoute(
          name: 'SharpChestPain',
          path: '/sharpChestPain',
          builder: (context, params) => const SharpChestPainWidget(),
        ),
        FFRoute(
          name: 'ChestPainwithRadiation',
          path: '/chestPainwithRadiation',
          builder: (context, params) => const ChestPainwithRadiationWidget(),
        ),
        FFRoute(
          name: 'ChestPainwithFever',
          path: '/chestPainwithFever',
          builder: (context, params) => const ChestPainwithFeverWidget(),
        ),
        FFRoute(
          name: 'ChronicChestPain',
          path: '/chronicChestPain',
          builder: (context, params) => const ChronicChestPainWidget(),
        ),
        FFRoute(
          name: 'MildDizziness',
          path: '/mildDizziness',
          builder: (context, params) => const MildDizzinessWidget(),
        ),
        FFRoute(
          name: 'DizzinessorLightheadedness',
          path: '/dizzinessorLightheadedness',
          builder: (context, params) => const DizzinessorLightheadednessWidget(),
        ),
        FFRoute(
          name: 'PersistentDizziness',
          path: '/persistentDizziness',
          builder: (context, params) => const PersistentDizzinessWidget(),
        ),
        FFRoute(
          name: 'VertigoSpinningSe',
          path: '/vertigoSpinningSe',
          builder: (context, params) => const VertigoSpinningSeWidget(),
        ),
        FFRoute(
          name: 'DizzinesswithHeadache',
          path: '/dizzinesswithHeadache',
          builder: (context, params) => const DizzinesswithHeadacheWidget(),
        ),
        FFRoute(
          name: 'DizzinesswithFatigue',
          path: '/dizzinesswithFatigue',
          builder: (context, params) => const DizzinesswithFatigueWidget(),
        ),
        FFRoute(
          name: 'LossofAppetite',
          path: '/lossofAppetite',
          builder: (context, params) => const LossofAppetiteWidget(),
        ),
        FFRoute(
          name: 'MildLossofAppetite',
          path: '/mildLossofAppetite',
          builder: (context, params) => const MildLossofAppetiteWidget(),
        ),
        FFRoute(
          name: 'PersistentLossofAppetite',
          path: '/persistentLossofAppetite',
          builder: (context, params) => const PersistentLossofAppetiteWidget(),
        ),
        FFRoute(
          name: 'LossofAppetitewithNausea',
          path: '/lossofAppetitewithNausea',
          builder: (context, params) => const LossofAppetitewithNauseaWidget(),
        ),
        FFRoute(
          name: 'LossofAppetitewithAbdominalPain',
          path: '/lossofAppetitewithAbdominalPain',
          builder: (context, params) => const LossofAppetitewithAbdominalPainWidget(),
        ),
        FFRoute(
          name: 'LossofAppetitewithFever',
          path: '/lossofAppetitewithFever',
          builder: (context, params) => const LossofAppetitewithFeverWidget(),
        ),
        FFRoute(
          name: 'RashorSkinChanges',
          path: '/rashorSkinChanges',
          builder: (context, params) => const RashorSkinChangesWidget(),
        ),
        FFRoute(
          name: 'MildRash',
          path: '/mildRash',
          builder: (context, params) => const MildRashWidget(),
        ),
        FFRoute(
          name: 'PersistentRash',
          path: '/persistentRash',
          builder: (context, params) => const PersistentRashWidget(),
        ),
        FFRoute(
          name: 'RashwithBlisters',
          path: '/rashwithBlisters',
          builder: (context, params) => const RashwithBlistersWidget(),
        ),
        FFRoute(
          name: 'RashwithFever',
          path: '/rashwithFever',
          builder: (context, params) => const RashwithFeverWidget(),
        ),
        FFRoute(
          name: 'RashwithSwelling',
          path: '/rashwithSwelling',
          builder: (context, params) => const RashwithSwellingWidget(),
        ),
        FFRoute(
          name: 'RashwithAcne',
          path: '/rashwithAcne',
          builder: (context, params) => const RashwithAcneWidget(),
        ),
        FFRoute(
          name: 'AbdominalPain',
          path: '/abdominalPain',
          builder: (context, params) => const AbdominalPainWidget(),
        ),
        FFRoute(
          name: 'MildAbdominalPain',
          path: '/mildAbdominalPain',
          builder: (context, params) => const MildAbdominalPainWidget(),
        ),
        FFRoute(
          name: 'PersistentAbdominalPain',
          path: '/persistentAbdominalPain',
          builder: (context, params) => const PersistentAbdominalPainWidget(),
        ),
        FFRoute(
          name: 'SharpAbdominalPain',
          path: '/sharpAbdominalPain',
          builder: (context, params) => const SharpAbdominalPainWidget(),
        ),
        FFRoute(
          name: 'AbdominalPainwithDiarrhea',
          path: '/abdominalPainwithDiarrhea',
          builder: (context, params) => const AbdominalPainwithDiarrheaWidget(),
        ),
        FFRoute(
          name: 'AbdominalPainwithConstipation',
          path: '/abdominalPainwithConstipation',
          builder: (context, params) => const AbdominalPainwithConstipationWidget(),
        ),
        FFRoute(
          name: 'AbdominalPainwithFever',
          path: '/abdominalPainwithFever',
          builder: (context, params) => const AbdominalPainwithFeverWidget(),
        ),
        FFRoute(
          name: 'UrinaryChanges',
          path: '/urinaryChanges',
          builder: (context, params) => const UrinaryChangesWidget(),
        ),
        FFRoute(
          name: 'PainfulUrination',
          path: '/painfulUrination',
          builder: (context, params) => const PainfulUrinationWidget(),
        ),
        FFRoute(
          name: 'FrequentUrination',
          path: '/frequentUrination',
          builder: (context, params) => const FrequentUrinationWidget(),
        ),
        FFRoute(
          name: 'UrgencyandIncontinence',
          path: '/urgencyandIncontinence',
          builder: (context, params) => const UrgencyandIncontinenceWidget(),
        ),
        FFRoute(
          name: 'PaininLowerAbdo',
          path: '/paininLowerAbdo',
          builder: (context, params) => const PaininLowerAbdoWidget(),
        ),
        FFRoute(
          name: 'UrinaryChangeswithFeve',
          path: '/urinaryChangeswithFeve',
          builder: (context, params) => const UrinaryChangeswithFeveWidget(),
        ),
        FFRoute(
          name: 'UrinaryChangeswithBackPain',
          path: '/urinaryChangeswithBackPain',
          builder: (context, params) => const UrinaryChangeswithBackPainWidget(),
        ),
        FFRoute(
          name: 'UnexplainedWeightLossorGain',
          path: '/unexplainedWeightLossorGain',
          builder: (context, params) => const UnexplainedWeightLossorGainWidget(),
        ),
        FFRoute(
          name: 'UnexplainedWeightLoss',
          path: '/unexplainedWeightLoss',
          builder: (context, params) => const UnexplainedWeightLossWidget(),
        ),
        FFRoute(
          name: 'ChangesinVision',
          path: '/changesinVision',
          builder: (context, params) => const ChangesinVisionWidget(),
        ),
        FFRoute(
          name: 'BlurredVision',
          path: '/blurredVision',
          builder: (context, params) => const BlurredVisionWidget(),
        ),
        FFRoute(
          name: 'NightBlindness',
          path: '/nightBlindness',
          builder: (context, params) => const NightBlindnessWidget(),
        ),
        FFRoute(
          name: 'WeightGainwithSwelling',
          path: '/weightGainwithSwelling',
          builder: (context, params) => const WeightGainwithSwellingWidget(),
        ),
        FFRoute(
          name: 'anxiety',
          path: '/anxiety',
          builder: (context, params) => const AnxietyWidget(),
        ),
        FFRoute(
          name: 'MoodChanges',
          path: '/moodChanges',
          builder: (context, params) => const MoodChangesWidget(),
        ),
        FFRoute(
          name: 'Irritability',
          path: '/irritability',
          builder: (context, params) => const IrritabilityWidget(),
        ),
        FFRoute(
          name: 'Acne',
          path: '/acne',
          builder: (context, params) => const AcneWidget(),
        ),
        FFRoute(
          name: 'SkinConditions',
          path: '/skinConditions',
          builder: (context, params) => const SkinConditionsWidget(),
        ),
        FFRoute(
          name: 'Psoriasis',
          path: '/psoriasis',
          builder: (context, params) => const PsoriasisWidget(),
        ),
        FFRoute(
          name: 'JointPain',
          path: '/jointPain',
          builder: (context, params) => const JointPainWidget(),
        ),
        FFRoute(
          name: 'JointandMuscleIssues',
          path: '/jointandMuscleIssues',
          builder: (context, params) => const JointandMuscleIssuesWidget(),
        ),
        FFRoute(
          name: 'Arthritis',
          path: '/arthritis',
          builder: (context, params) => const ArthritisWidget(),
        ),
        FFRoute(
          name: 'DigestiveProblems',
          path: '/digestiveProblems',
          builder: (context, params) => const DigestiveProblemsWidget(),
        ),
        FFRoute(
          name: 'Constipation',
          path: '/constipation',
          builder: (context, params) => const ConstipationWidget(),
        ),
        FFRoute(
          name: 'Gastritis',
          path: '/gastritis',
          builder: (context, params) => const GastritisWidget(),
        ),
        FFRoute(
          name: 'Allergies',
          path: '/allergies',
          builder: (context, params) => const AllergiesWidget(),
        ),
        FFRoute(
          name: 'RespiratoryIssues',
          path: '/respiratoryIssues',
          builder: (context, params) => const RespiratoryIssuesWidget(),
        ),
        FFRoute(
          name: 'Asthma',
          path: '/asthma',
          builder: (context, params) => const AsthmaWidget(),
        ),
        FFRoute(
          name: 'Anemia',
          path: '/anemia',
          builder: (context, params) => const AnemiaWidget(),
        ),
        FFRoute(
          name: 'CirculatoryProblems',
          path: '/circulatoryProblems',
          builder: (context, params) => const CirculatoryProblemsWidget(),
        ),
        FFRoute(
          name: 'HighBloodPressure',
          path: '/highBloodPressure',
          builder: (context, params) => const HighBloodPressureWidget(),
        ),
        FFRoute(
          name: 'PainfulIntercourseDyspa',
          path: '/painfulIntercourseDyspa',
          builder: (context, params) => const PainfulIntercourseDyspaWidget(),
        ),
        FFRoute(
          name: 'SexualHealthIssues',
          path: '/sexualHealthIssues',
          builder: (context, params) => const SexualHealthIssuesWidget(),
        ),
        FFRoute(
          name: 'ErectileDysfunction',
          path: '/erectileDysfunction',
          builder: (context, params) => const ErectileDysfunctionWidget(),
        ),
        FFRoute(
          name: 'Ads',
          path: '/ads',
          builder: (context, params) => const AdsWidget(),
        ),
        FFRoute(
          name: 'start',
          path: '/start',
          builder: (context, params) => const StartWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
