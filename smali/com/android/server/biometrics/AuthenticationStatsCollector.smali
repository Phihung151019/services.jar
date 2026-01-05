.class public final Lcom/android/server/biometrics/AuthenticationStatsCollector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final FRR_MINIMAL_DURATION:Ljava/time/Duration;

.field static final MAXIMUM_ENROLLMENT_NOTIFICATIONS:I = 0x1


# instance fields
.field public final mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

.field public final mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;

.field public final mBroadcastReceiver:Lcom/android/server/biometrics/AuthenticationStatsCollector$1;

.field public final mClock:Ljava/time/Clock;

.field public final mContext:Landroid/content/Context;

.field public final mEnabled:Z

.field public final mEnrollTimeUpdatedReceiver:Lcom/android/server/biometrics/AuthenticationStatsCollector$1;

.field public final mFaceManager:Landroid/hardware/face/FaceManager;

.field public final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mModality:I

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mThreshold:F

.field public final mUserAuthenticationStatsMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x7

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->FRR_MINIMAL_DURATION:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/biometrics/sensors/BiometricNotificationImpl;Ljava/time/Clock;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/biometrics/AuthenticationStatsCollector$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/AuthenticationStatsCollector$1;-><init>(Lcom/android/server/biometrics/AuthenticationStatsCollector;I)V

    iput-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBroadcastReceiver:Lcom/android/server/biometrics/AuthenticationStatsCollector$1;

    new-instance v1, Lcom/android/server/biometrics/AuthenticationStatsCollector$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/AuthenticationStatsCollector$1;-><init>(Lcom/android/server/biometrics/AuthenticationStatsCollector;I)V

    iput-object v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mEnrollTimeUpdatedReceiver:Lcom/android/server/biometrics/AuthenticationStatsCollector$1;

    iput-object p1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1130001

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mThreshold:F

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    iput p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    iput-object p3, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;

    iput-object p4, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mClock:Ljava/time/Clock;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mPackageManager:Landroid/content/pm/PackageManager;

    const-class p2, Landroid/hardware/face/FaceManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/face/FaceManager;

    iput-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFaceManager:Landroid/hardware/face/FaceManager;

    const-class p2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance p2, Lcom/android/server/biometrics/AuthenticationStatsPersister;

    invoke-direct {p2, p1}, Lcom/android/server/biometrics/AuthenticationStatsPersister;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->initializeUserAuthenticationStatsMap()V

    iget-object p0, p2, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo p2, "frr_threshold"

    invoke-interface {p0, p2, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p2, "android.intent.action.USER_REMOVED"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p2, "last_enroll_time_changed"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p1, v1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final authenticate(IZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string/jumbo v2, "frr_stats"

    iget-boolean v3, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mEnabled:Z

    if-nez v3, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v3, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.hardware.fingerprint"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.hardware.biometrics.face"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v3, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledTemplates(I)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->updateAuthenticationStatsMapIfNeeded(I)V

    iget-object v3, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/AuthenticationStats;

    iget v4, v3, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    sget v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->MAXIMUM_ENROLLMENT_NOTIFICATIONS:I

    if-lt v4, v5, :cond_3

    goto/16 :goto_7

    :cond_3
    const/4 v4, 0x1

    if-nez p2, :cond_4

    iget v6, v3, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    add-int/2addr v6, v4

    iput v6, v3, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    :cond_4
    iget v6, v3, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    add-int/2addr v6, v4

    iput v6, v3, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    iget-object v3, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/AuthenticationStats;

    iget v6, v3, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    const/16 v7, 0x96

    if-ge v6, v7, :cond_5

    goto/16 :goto_2

    :cond_5
    iget v7, v3, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    const-string/jumbo v8, "Reset Counters."

    const-string v9, "AuthenticationStats"

    const/4 v10, 0x0

    if-ge v7, v5, :cond_a

    if-lez v6, :cond_6

    iget v5, v3, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    int-to-float v5, v5

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    :cond_6
    const/high16 v5, -0x40800000    # -1.0f

    :goto_0
    iget v6, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mThreshold:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_a

    iput v10, v3, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    iput v10, v3, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v5, :cond_7

    invoke-virtual {v5, v1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v4

    goto :goto_1

    :cond_7
    move v5, v10

    :goto_1
    iget-object v6, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v6, :cond_8

    invoke-virtual {v6, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledTemplates(I)Z

    move-result v6

    if-eqz v6, :cond_8

    move v10, v4

    :cond_8
    iget-object v6, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;

    if-eqz v5, :cond_9

    if-nez v10, :cond_9

    iget-object v5, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;->sendFpEnrollNotification(Landroid/content/Context;)V

    iget-object v5, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/server/biometrics/AuthenticationStats;->mLastFrrNotificationTime:J

    iget v5, v3, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    add-int/2addr v5, v4

    iput v5, v3, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    goto :goto_2

    :cond_9
    if-nez v5, :cond_b

    if-eqz v10, :cond_b

    iget-object v5, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showFaceEnrollNotification(Landroid/content/Context;)V

    iget-object v5, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/server/biometrics/AuthenticationStats;->mLastFrrNotificationTime:J

    iget v5, v3, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    add-int/2addr v5, v4

    iput v5, v3, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    goto :goto_2

    :cond_a
    iput v10, v3, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    iput v10, v3, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_2
    iget-object v3, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/AuthenticationStats;

    iget v4, v1, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    rem-int/lit8 v3, v4, 0x32

    if-nez v3, :cond_10

    iget v5, v1, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    iget v6, v1, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    iget-wide v7, v1, Lcom/android/server/biometrics/AuthenticationStats;->mLastEnrollmentTime:J

    iget-wide v9, v1, Lcom/android/server/biometrics/AuthenticationStats;->mLastFrrNotificationTime:J

    iget v11, v1, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    iget-object v0, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "AuthenticationStatsPersister"

    :try_start_0
    new-instance v13, Ljava/util/HashSet;

    iget-object v3, v0, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v14, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {v3, v2, v14}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v15, "user_id"

    move-object/from16 p0, v3

    iget v3, v1, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    if-eqz v14, :cond_e

    :try_start_1
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 p1, v1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_4
    move-object/from16 p2, v1

    goto :goto_5

    :cond_c
    const-string v14, ""

    goto :goto_4

    :goto_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->remove()V

    move-object/from16 v1, p2

    goto :goto_6

    :cond_d
    move-object/from16 v3, p0

    move-object/from16 v1, p1

    goto :goto_3

    :cond_e
    const/4 v1, 0x0

    :goto_6
    if-nez v1, :cond_f

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    :cond_f
    move-object v3, v1

    invoke-static/range {v3 .. v11}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->buildFrrStats(Lorg/json/JSONObject;IIIJJI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "frrStatsSet to persist: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v13}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    const-string/jumbo v0, "Unable to persist authentication stats"

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_7
    return-void
.end method

.method public getAuthenticationStatsForUser(I)Lcom/android/server/biometrics/AuthenticationStats;
    .locals 1

    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/AuthenticationStats;

    return-object p0
.end method

.method public final initializeUserAuthenticationStatsMap()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "frr_stats"

    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v6, 0x0

    iget v8, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    const/4 v9, 0x4

    const-string/jumbo v10, "enrollment_notifications"

    const/16 v11, -0x2710

    const-string/jumbo v12, "user_id"

    if-ne v8, v9, :cond_7

    :try_start_1
    new-instance v13, Lcom/android/server/biometrics/AuthenticationStats;

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    :cond_1
    move v14, v11

    const-string/jumbo v8, "face_attempts"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    move v15, v8

    goto :goto_1

    :cond_2
    move v15, v4

    :goto_1
    const-string/jumbo v8, "face_rejections"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    move/from16 v16, v8

    goto :goto_2

    :cond_3
    move/from16 v16, v4

    :goto_2
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    :cond_4
    move/from16 v17, v4

    const-string/jumbo v4, "face_last_enroll_time"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    move-wide/from16 v19, v8

    goto :goto_3

    :cond_5
    move-wide/from16 v19, v6

    :goto_3
    const-string/jumbo v4, "face_last_notification_time"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    :cond_6
    move-wide/from16 v21, v6

    const/16 v18, 0x4

    invoke-direct/range {v13 .. v22}, Lcom/android/server/biometrics/AuthenticationStats;-><init>(IIIIIJJ)V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    new-instance v13, Lcom/android/server/biometrics/AuthenticationStats;

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    :cond_8
    move v14, v11

    const-string/jumbo v8, "fingerprint_attempts"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    move v15, v8

    goto :goto_4

    :cond_9
    move v15, v4

    :goto_4
    const-string/jumbo v8, "fingerprint_rejections"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    move/from16 v16, v8

    goto :goto_5

    :cond_a
    move/from16 v16, v4

    :goto_5
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    :cond_b
    move/from16 v17, v4

    const-string/jumbo v4, "fingerprint_last_enroll_time"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    move-wide/from16 v19, v8

    goto :goto_6

    :cond_c
    move-wide/from16 v19, v6

    :goto_6
    const-string/jumbo v4, "fingerprint_last_notification_time"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    :cond_d
    move-wide/from16 v21, v6

    const/16 v18, 0x1

    invoke-direct/range {v13 .. v22}, Lcom/android/server/biometrics/AuthenticationStats;-><init>(IIIIIJJ)V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    const-string/jumbo v4, "Unable to resolve authentication stats JSON: "

    const-string v5, "AuthenticationStatsPersister"

    invoke-static {v4, v3, v5}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_7
    if-ge v4, v1, :cond_f

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/android/server/biometrics/AuthenticationStats;

    iget-object v5, v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    iget v6, v3, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_f
    return-void
.end method

.method public setAuthenticationStatsForUser(ILcom/android/server/biometrics/AuthenticationStats;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final updateAuthenticationStatsMapIfNeeded(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->initializeUserAuthenticationStatsMap()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/AuthenticationStats;

    iget p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    invoke-direct {v2, p1, p0}, Lcom/android/server/biometrics/AuthenticationStats;-><init>(II)V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
