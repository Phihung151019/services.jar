.class public final Lcom/android/server/location/gnss/GnssLocationProviderSec$2;
.super Landroid/telephony/TelephonyManager$CellInfoCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager$CellInfoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellInfo(Ljava/util/List;)V
    .locals 26

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    goto/16 :goto_8

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CellInfo updated. cellInfo size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    iget-object v3, v1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v3

    const/4 v4, 0x4

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eq v3, v7, :cond_6

    if-eq v3, v5, :cond_6

    const/16 v8, 0x9

    if-eq v3, v8, :cond_6

    const/16 v9, 0xa

    if-eq v3, v9, :cond_6

    const/16 v10, 0xf

    if-ne v3, v10, :cond_1

    goto :goto_1

    :cond_1
    const/16 v11, 0xd

    if-ne v3, v11, :cond_2

    :goto_0
    move v15, v4

    goto :goto_4

    :cond_2
    const/16 v12, 0x14

    if-ne v3, v12, :cond_3

    move v15, v5

    goto :goto_4

    :cond_3
    const/16 v12, 0x12

    const/4 v13, 0x1

    if-ne v3, v12, :cond_9

    iget-object v3, v1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v3

    if-eq v3, v7, :cond_8

    if-eq v3, v5, :cond_8

    if-eq v3, v8, :cond_8

    if-eq v3, v9, :cond_8

    if-ne v3, v10, :cond_4

    goto :goto_3

    :cond_4
    if-ne v3, v11, :cond_5

    const-string/jumbo v1, "networkType = IWLAN, VoiceNetworkType = LTE"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v1, v1, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUsaVerizon()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v6, 0x0

    :cond_6
    :goto_1
    move v15, v6

    goto :goto_4

    :cond_7
    const-string/jumbo v1, "networkType = IWLAN, VoiceNetworkType is not LTE & HSDPA, type =  "

    invoke-static {v3, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v15, v13

    goto :goto_4

    :cond_8
    :goto_3
    const-string/jumbo v1, "networkType = IWLAN, VoiceNetworkType = "

    invoke-static {v3, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string/jumbo v1, "networkType is not IWLAN and type = 1"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_4
    if-nez v15, :cond_a

    goto/16 :goto_8

    :cond_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_5

    :cond_b
    const-string/jumbo v1, "registered cell found"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    goto/16 :goto_8

    :cond_c
    iget-object v14, v0, Lcom/android/server/location/gnss/GnssLocationProviderSec$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    instance-of v0, v3, Landroid/telephony/CellInfoGsm;

    if-eqz v0, :cond_d

    check-cast v3, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v18

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v0

    int-to-long v1, v0

    const v21, 0x7fffffff

    const/16 v22, 0x0

    move/from16 v23, v0

    move-wide/from16 v19, v1

    invoke-virtual/range {v14 .. v23}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setAgpsReferenceLocationCellId(IIIIJIII)V

    return-void

    :cond_d
    instance-of v0, v3, Landroid/telephony/CellInfoWcdma;

    if-eqz v0, :cond_e

    check-cast v3, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v18

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v21

    const/16 v22, 0x0

    move/from16 v23, v1

    move-wide/from16 v19, v2

    invoke-virtual/range {v14 .. v23}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setAgpsReferenceLocationCellId(IIIIJIII)V

    return-void

    :cond_e
    instance-of v0, v3, Landroid/telephony/CellInfoLte;

    iget-object v1, v14, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    if-eqz v0, :cond_10

    check-cast v3, Landroid/telephony/CellInfoLte;

    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v20

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v23

    if-eq v15, v4, :cond_f

    iget-object v0, v14, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUsaVerizon()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "correct network type to 4 from "

    invoke-static {v15, v0, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    move v4, v15

    :goto_6
    const/16 v24, 0x0

    move/from16 v25, v3

    move-wide/from16 v21, v5

    move/from16 v18, v16

    move/from16 v19, v17

    move/from16 v17, v4

    move-object/from16 v16, v14

    invoke-virtual/range {v16 .. v25}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setAgpsReferenceLocationCellId(IIIIJIII)V

    return-void

    :cond_10
    instance-of v0, v3, Landroid/telephony/CellInfoNr;

    if-eqz v0, :cond_12

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityNr;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result v20

    invoke-virtual {v0}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v21

    invoke-virtual {v0}, Landroid/telephony/CellIdentityNr;->getPci()I

    move-result v23

    invoke-virtual {v0}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    move-result v24

    if-eq v15, v5, :cond_11

    iget-object v0, v14, Lcom/android/server/location/gnss/GnssLocationProviderSec;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUsaVerizon()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "correct network type to 8 from "

    invoke-static {v15, v0, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_11
    move v5, v15

    :goto_7
    const/16 v25, 0x0

    move/from16 v18, v16

    move/from16 v19, v17

    move/from16 v17, v5

    move-object/from16 v16, v14

    invoke-virtual/range {v16 .. v25}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setAgpsReferenceLocationCellId(IIIIJIII)V

    return-void

    :cond_12
    instance-of v0, v3, Landroid/telephony/CellInfoCdma;

    if-eqz v0, :cond_13

    check-cast v3, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v3}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    const/4 v0, 0x0

    int-to-long v1, v0

    const/16 v22, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move/from16 v23, v0

    move-wide/from16 v19, v1

    invoke-virtual/range {v14 .. v23}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->setAgpsReferenceLocationCellId(IIIIJIII)V

    :cond_13
    :goto_8
    return-void
.end method
