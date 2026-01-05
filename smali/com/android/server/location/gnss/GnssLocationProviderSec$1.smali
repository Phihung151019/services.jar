.class public final Lcom/android/server/location/gnss/GnssLocationProviderSec$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 p1, 0x2

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "receive broadcast intent, action: "

    const-string v5, "GnssLocationProvider_ex"

    invoke-static {v4, v3, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v4, "LOADED"

    const-string/jumbo v6, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_0
    move v3, v0

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v7, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v7, "com.sec.android.ISSUE_TRACKER_ONOFF"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_2
    const-string/jumbo v7, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_3
    const-string/jumbo v7, "com.samsung.ims.action.IMS_REGISTRATION"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_4
    const-string/jumbo v7, "com.samsung.intent.action.EMERGENCY_SMS_OVER_IMS"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_6
    const-string/jumbo v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    move v3, p1

    goto :goto_1

    :sswitch_7
    const-string/jumbo v7, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    move v3, v1

    goto :goto_1

    :sswitch_8
    const-string/jumbo v7, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    move v3, v2

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2, v2}, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;Ljava/lang/Object;I)V

    invoke-virtual {p2, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->handleSuplInit(Ljava/lang/Runnable;I)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    sget-object p1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isIssueTrackerIntentReceived:Z

    if-nez p2, :cond_b

    if-eqz p1, :cond_b

    const-string/jumbo p2, "ONOFF"

    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string p2, "INTENT_ISSUE_TRACKER_ONOFF enabled = "

    invoke-static {p2, v5, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo p2, "dev.gnss.silentloggingIssueTracker"

    if-eqz p1, :cond_a

    const-string/jumbo p1, "ON"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string/jumbo p1, "OFF"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isIssueTrackerIntentReceived:Z

    return-void

    :cond_b
    const-string p0, "INTENT_ISSUE_TRACKER_ONOFF intent has been ignored because it\'s processed only once after booting."

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    iget-object p1, p1, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-nez p1, :cond_1b

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    sget-object p1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    iget-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-nez p1, :cond_c

    goto/16 :goto_5

    :cond_c
    const-string/jumbo p1, "Wifi Scan result updated"

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "resultsUpdated"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    const-string/jumbo p1, "WIFI_SCAN_DONE"

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    iget-object v3, v3, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v3

    const-string/jumbo v4, "REGISTERED"

    const-string/jumbo v5, "SuplInitHandler"

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    iget-object v3, v3, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v3}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "PHONE_ID"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "IMS_REGISTRATION SLOT_ID = "

    invoke-static {v0, v1, v5}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-ltz v0, :cond_1b

    if-le v0, p1, :cond_d

    goto/16 :goto_5

    :cond_d
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string/jumbo v1, "SERVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IMS service capabilities : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IMS registration error code : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "SIP_ERROR"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "smsip"

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1b

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mImsRegistered:[Z

    aput-boolean p1, p0, v0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "IMS smsip["

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "] registered "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    iget-object p1, p1, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    iget-object p1, p1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUsaVerizon()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency(J)Z

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "VOWIFI"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_5

    :cond_f
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iget-object v0, p1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    if-eqz p2, :cond_10

    if-eqz p0, :cond_1b

    iget-boolean p0, p1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->isEmergencyVowifiRegistration:Z

    if-nez p0, :cond_1b

    const-string/jumbo p0, "VoWIFI for emergency is registered "

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->isEmergencyVowifiRegistration:Z

    const-string/jumbo p0, "VOWIFI_REGISTRATION=TRUE"

    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    return-void

    :cond_10
    iget-boolean p0, p1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->isEmergencyVowifiRegistration:Z

    if-eqz p0, :cond_1b

    const-string/jumbo p0, "VoWIFI for emergency is deregistered "

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->isEmergencyVowifiRegistration:Z

    const-string/jumbo p0, "VOWIFI_REGISTRATION=FALSE"

    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    sget-object p1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-eqz p1, :cond_1b

    new-instance p1, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v2}, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    sget-object p1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "ss"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "SIM_STATE_CHANGED received : "

    invoke-static {p2, p1, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSimInformationHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    iput-object v3, v6, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const-string/jumbo v6, "SubscriptionId is "

    const-string v7, ", SimOperatorName = "

    invoke-static {v1, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", SimOperator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSimInformationHashMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v7, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;

    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v8}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getConfigMap()Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput v0, v7, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mSlotId:I

    iput-object v3, v7, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mSimOperator:Ljava/lang/String;

    iput-object v2, v7, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_11
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    if-eqz p1, :cond_14

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setSuplServerSec()V

    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class p2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    if-nez p1, :cond_12

    goto/16 :goto_5

    :cond_12
    invoke-virtual {p1}, Landroid/hardware/input/InputManager;->semGetLidState()I

    move-result p1

    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mLidState:I

    if-le p1, v0, :cond_1b

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Folderable phone - simstate change. lidstate "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mLidState:I

    invoke-static {p1, p2, v5}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mLidState:I

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->sendLidState(I)V

    return-void

    :cond_13
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setSuplServerSec()V

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->sendExtraConfigurationString()V

    return-void

    :cond_14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUSAMarket()Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_5

    :cond_15
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->sendExtraConfigurationString()V

    iget p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setLppBitMask(I)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    sget-object p1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "networkInfo"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, p2, :cond_16

    sget-boolean p1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isWlanApConnected:Z

    if-nez p1, :cond_1b

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "WIFI NetworkInfo: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isWlanApConnected:Z

    return-void

    :cond_16
    sget-boolean p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isWlanApConnected:Z

    if-eqz p0, :cond_1b

    const-string/jumbo p0, "WIFI is DISCONNECTED."

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/android/server/location/gnss/GnssLocationProviderSec;->isWlanApConnected:Z

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSuplInitHandler:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2, v1}, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;Ljava/lang/Object;I)V

    invoke-virtual {p2, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->handleSuplInit(Ljava/lang/Runnable;I)V

    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    sget-object p1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "com.samsung.carrier.extra.CARRIER_STATE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "com.samsung.carrier.extra.CARRIER_PHONE_ID"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "slotid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " carrier state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo v0, "UPDATED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    :cond_17
    if-ltz p2, :cond_1b

    const-string p1, "CARRIER_STATE_CHANGED="

    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result p1

    const-string/jumbo v0, "Sim subId from slotId. subId="

    const-string v1, ", slotId="

    invoke-static {p1, p2, v0, v1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "CarrierFeature LOADED. it\'s sub Id="

    invoke-static {p1, v0, v5}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mSimInformationHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;

    if-eqz p1, :cond_19

    iput p2, p1, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mSlotId:I

    const-string/jumbo v0, "Set Sim slotID to SimInformationForDSDS, slotId="

    const-string/jumbo v1, "SimInfo="

    invoke-static {p2, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_19
    const-string/jumbo p1, "SimInformation was null"

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_4
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setCpAgpsProfile(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setLppBitMask(I)V

    :cond_1b
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6695ea54 -> :sswitch_8
        -0x34179f27 -> :sswitch_7
        -0x147b62d9 -> :sswitch_6
        -0xdb21ee7 -> :sswitch_5
        0x23e5f1bf -> :sswitch_4
        0x4e07a101 -> :sswitch_3
        0x6ff575fd -> :sswitch_2
        0x7438879a -> :sswitch_1
        0x7fad5a77 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
