.class public final synthetic Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    iput-object p2, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/net/DatagramPacket;

    iget-object v1, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->onRequestSetID(I)V

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getLength()I

    move-result p0

    iget-object v0, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->sendSuplNiMessage([BI)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "data"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v2, "subscription"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    sput p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "New NI received, Sim Sub id="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", SimOperator="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget v3, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "SuplInitHandler"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget v3, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    invoke-virtual {p0, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p0

    iget-object v3, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    iput-object p0, v3, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-result-object p0

    iput-object p0, v3, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mNiSessionStarted:Z

    iget-object v4, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v3, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v4, v5, :cond_8

    :goto_1
    const-string/jumbo v3, "checkWapSuplInit : WapPush Message for SUPL Init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    if-eqz v3, :cond_3

    const v4, 0x1000001a

    const-string/jumbo v5, "New message notification LCD on"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_4
    iget-object v3, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "agps_function_switch"

    invoke-static {v3, v4, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "checkWapSuplInit NI: isAgpsSwitchMode=AGPS_FUNCTION_SWITCH : "

    invoke-static {v3, v4, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-ne v3, p0, :cond_6

    iget-object v3, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string/jumbo v3, "checkWapSuplInit NI : agps on only for home network info.isRoaming() == true "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    const-string/jumbo v3, "checkWapSuplInit NI :: agps on only for home network. PS error."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    const-string/jumbo v3, "checkWapSuplInit NI :: agps on for all network. launch NI session"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    const-string/jumbo v4, "checkWapSuplInit NI : agps off isAgpsSwitchMode : "

    invoke-static {v3, v4, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v3}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaSktSim()Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "45008"

    iget-object v4, v3, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "45006"

    iget-object v3, v3, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->updateSuplConfigurationForKorNi()V

    :cond_a
    :goto_3
    iget-object v2, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-virtual {v2, p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->onRequestSetID(I)V

    :cond_b
    array-length p0, v1

    iget-object v0, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->sendSuplNiMessage([BI)V

    :goto_4
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    const-string/jumbo v2, "SuplInitHandler"

    if-nez v1, :cond_c

    const-string/jumbo p0, "Message does not exist in the intent."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_c
    array-length v3, v1

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_16

    aget-object v5, v1, v4

    if-eqz v5, :cond_15

    iget-object v6, v5, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-nez v6, :cond_d

    goto/16 :goto_8

    :cond_d
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "subscription"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_6

    :cond_e
    const/4 v6, -0x1

    :goto_6
    sput v6, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    if-nez v5, :cond_f

    goto/16 :goto_8

    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "New NI received, Sim Sub id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", SimOperator="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget v8, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget v7, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    iput-object v6, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    move-result-object v6

    iput-object v6, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mNiSessionStarted:Z

    iget-object v8, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v8

    if-nez v8, :cond_14

    iget-object v8, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    sget-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v8, v9, :cond_10

    goto :goto_7

    :cond_10
    sget-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    if-ne v8, v9, :cond_11

    :goto_7
    const-string/jumbo v8, "checkSmsSuplInit : Sms Message for SUPL Init"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-virtual {v7}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaSktSim()Z

    move-result v8

    if-nez v8, :cond_12

    const-string v8, "45008"

    iget-object v9, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    const-string v8, "45006"

    iget-object v7, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    :cond_12
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->updateSuplConfigurationForKorNi()V

    :cond_13
    iget-object v7, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-virtual {v7, v6}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->onRequestSetID(I)V

    :cond_14
    array-length v6, v5

    iget-object v7, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v7, v5, v6}, Lcom/android/server/location/gnss/hal/GnssNative;->sendSuplNiMessage([BI)V

    :cond_15
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_16
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
