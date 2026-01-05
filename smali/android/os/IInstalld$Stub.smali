.class public abstract Landroid/os/IInstalld$Stub;
.super Landroid/os/Binder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IInstalld;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IInstalld"

.field static final TRANSACTION_cleanupInvalidPackageDirs:I = 0x31

.field static final TRANSACTION_clearAppData:I = 0x9

.field static final TRANSACTION_clearAppProfiles:I = 0x19

.field static final TRANSACTION_compressFile:I = 0x47

.field static final TRANSACTION_controlDexOptBlocking:I = 0x14

.field static final TRANSACTION_copyKnoxAppData:I = 0x36

.field static final TRANSACTION_copyKnoxCancel:I = 0x38

.field static final TRANSACTION_copyKnoxChunks:I = 0x37

.field static final TRANSACTION_copySystemProfile:I = 0x18

.field static final TRANSACTION_createAppData:I = 0x4

.field static final TRANSACTION_createAppDataBatched:I = 0x5

.field static final TRANSACTION_createEncAppData:I = 0x3c

.field static final TRANSACTION_createFsveritySetupAuthToken:I = 0x34

.field static final TRANSACTION_createOatDir:I = 0x21

.field static final TRANSACTION_createProfileSnapshot:I = 0x1c

.field static final TRANSACTION_createUserData:I = 0x1

.field static final TRANSACTION_deleteKnoxFile:I = 0x3b

.field static final TRANSACTION_deleteOdex:I = 0x24

.field static final TRANSACTION_deleteReferenceProfile:I = 0x1b

.field static final TRANSACTION_destroyAppData:I = 0xa

.field static final TRANSACTION_destroyAppDataSnapshot:I = 0x2c

.field static final TRANSACTION_destroyAppProfiles:I = 0x1a

.field static final TRANSACTION_destroyCeSnapshotsNotSpecified:I = 0x2d

.field static final TRANSACTION_destroyProfileSnapshot:I = 0x1d

.field static final TRANSACTION_destroyUserData:I = 0x2

.field static final TRANSACTION_dexopt:I = 0x13

.field static final TRANSACTION_dumpProfiles:I = 0x17

.field static final TRANSACTION_enableFsverity:I = 0x35

.field static final TRANSACTION_fixupAppData:I = 0xb

.field static final TRANSACTION_freeCache:I = 0x1f

.field static final TRANSACTION_getAppCrates:I = 0xf

.field static final TRANSACTION_getAppSize:I = 0xc

.field static final TRANSACTION_getCompressedStats:I = 0x48

.field static final TRANSACTION_getDualDARLockstate:I = 0x45

.field static final TRANSACTION_getExternalSize:I = 0xe

.field static final TRANSACTION_getKnoxFileInfo:I = 0x39

.field static final TRANSACTION_getKnoxScanDir:I = 0x3a

.field static final TRANSACTION_getOdexVisibility:I = 0x32

.field static final TRANSACTION_getUserCrates:I = 0x10

.field static final TRANSACTION_getUserSize:I = 0xd

.field static final TRANSACTION_hasDualDARPolicy:I = 0x43

.field static final TRANSACTION_hasDualDARPolicyRecursively:I = 0x44

.field static final TRANSACTION_hashSecondaryDexFile:I = 0x26

.field static final TRANSACTION_installSpegCacheToDalvikCache:I = 0x46

.field static final TRANSACTION_invalidateMounts:I = 0x27

.field static final TRANSACTION_isQuotaSupported:I = 0x28

.field static final TRANSACTION_linkFile:I = 0x22

.field static final TRANSACTION_linkNativeLibraryDirectory:I = 0x20

.field static final TRANSACTION_mergeProfiles:I = 0x16

.field static final TRANSACTION_migrateAppData:I = 0x8

.field static final TRANSACTION_migrateLegacyObbData:I = 0x30

.field static final TRANSACTION_migrateSdpDb:I = 0x3f

.field static final TRANSACTION_moveAb:I = 0x23

.field static final TRANSACTION_moveCompleteApp:I = 0x12

.field static final TRANSACTION_onPrivateVolumeRemoved:I = 0x2f

.field static final TRANSACTION_prepareAppProfile:I = 0x29

.field static final TRANSACTION_reconcileSdkData:I = 0x6

.field static final TRANSACTION_reconcileSecondaryDexFile:I = 0x25

.field static final TRANSACTION_removeEncPkgDir:I = 0x3d

.field static final TRANSACTION_removeEncUserDir:I = 0x3e

.field static final TRANSACTION_removeNotTargetedPreloadApksIfNeeded:I = 0x33

.field static final TRANSACTION_restoreAppDataSnapshot:I = 0x2b

.field static final TRANSACTION_restoreconAppData:I = 0x7

.field static final TRANSACTION_rmPackageDir:I = 0x1e

.field static final TRANSACTION_rmdex:I = 0x15

.field static final TRANSACTION_scanApkStats:I = 0x49

.field static final TRANSACTION_setAppQuota:I = 0x11

.field static final TRANSACTION_setDualDARPolicyDir:I = 0x41

.field static final TRANSACTION_setDualDARPolicyDirRecursively:I = 0x42

.field static final TRANSACTION_setEviction:I = 0x40

.field static final TRANSACTION_setFirstBoot:I = 0x3

.field static final TRANSACTION_snapshotAppData:I = 0x2a

.field static final TRANSACTION_tryMountDataMirror:I = 0x2e


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.os.IInstalld"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo v0, "android.os.IInstalld"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IInstalld;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/IInstalld;

    return-object v0

    :cond_1
    new-instance v0, Landroid/os/IInstalld$Stub$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v12, p3

    const-string/jumbo v3, "android.os.IInstalld"

    const/4 v13, 0x1

    if-lt v1, v13, :cond_0

    const v4, 0xffffff

    if-gt v1, v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :cond_1
    packed-switch v1, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v3}, Landroid/os/IInstalld;->scanApkStats(Ljava/lang/String;I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    move v8, v13

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xf4240

    if-gt v3, v4, :cond_3

    if-gez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    new-array v3, v3, [J

    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v3}, Landroid/os/IInstalld;->getCompressedStats(Ljava/lang/String;[J)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/os/BadParcelableException;

    const-string v1, "Array too large: "

    invoke-static {v3, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v3}, Landroid/os/IInstalld;->compressFile(Ljava/lang/String;Z)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v3, v4, v5}, Landroid/os/IInstalld;->installSpegCacheToDalvikCache(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_4
    invoke-interface {v0}, Landroid/os/IInstalld;->getDualDARLockstate()Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v3}, Landroid/os/IInstalld;->hasDualDARPolicyRecursively(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1}, Landroid/os/IInstalld;->hasDualDARPolicy(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v3, v4}, Landroid/os/IInstalld;->setDualDARPolicyDirRecursively(IILjava/lang/String;)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v3, v4}, Landroid/os/IInstalld;->setDualDARPolicyDir(IILjava/lang/String;)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v3}, Landroid/os/IInstalld;->setEviction(IZ)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v3}, Landroid/os/IInstalld;->migrateSdpDb(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1}, Landroid/os/IInstalld;->removeEncUserDir(I)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v3}, Landroid/os/IInstalld;->removeEncPkgDir(ILjava/lang/String;)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v3, v4, v5}, Landroid/os/IInstalld;->createEncAppData(Ljava/lang/String;III)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1}, Landroid/os/IInstalld;->deleteKnoxFile(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v3, v4, v5}, Landroid/os/IInstalld;->getKnoxScanDir(Ljava/lang/String;JLjava/util/List;)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1}, Landroid/os/IInstalld;->getKnoxFileInfo(Ljava/lang/String;)[J

    move-result-object v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v3, v4}, Landroid/os/IInstalld;->copyKnoxCancel(Ljava/lang/String;J)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-object/from16 v14, p2

    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface/range {v0 .. v11}, Landroid/os/IInstalld;->copyKnoxChunks(Ljava/lang/String;ILjava/lang/String;IIJJJ)I

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_13
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_14
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->enableFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_15
    move-object v14, v2

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->createFsveritySetupAuthToken(Landroid/os/ParcelFileDescriptor;I)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_16
    invoke-interface {v0}, Landroid/os/IInstalld;->removeNotTargetedPreloadApksIfNeeded()Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_17
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_18
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_19
    invoke-interface {v0}, Landroid/os/IInstalld;->migrateLegacyObbData()V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1a
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1}, Landroid/os/IInstalld;->onPrivateVolumeRemoved(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1b
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1}, Landroid/os/IInstalld;->tryMountDataMirror(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1c
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1d
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1e
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1f
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_20
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_21
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1}, Landroid/os/IInstalld;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_22
    invoke-interface {v0}, Landroid/os/IInstalld;->invalidateMounts()V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_23
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :pswitch_24
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_25
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_26
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_27
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_28
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_29
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2a
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->freeCache(Ljava/lang/String;JI)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2b
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2c
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2d
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2e
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2f
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1}, Landroid/os/IInstalld;->destroyAppProfiles(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_30
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_31
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_32
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_33
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_34
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->rmdex(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_35
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1}, Landroid/os/IInstalld;->controlDexOptBlocking(Z)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_36
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move v1, v13

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v1, v0

    move-object/from16 v0, p3

    invoke-interface/range {v1 .. v17}, Landroid/os/IInstalld;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_2
    const/4 v8, 0x1

    goto/16 :goto_3

    :pswitch_37
    move-object v14, v2

    move-object v0, v12

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :pswitch_38
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->setAppQuota(Ljava/lang/String;IIJ)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :pswitch_39
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    const/4 v8, 0x1

    invoke-virtual {v12, v0, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_3

    :pswitch_3a
    move-object v14, v2

    move v8, v13

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_3

    :pswitch_3b
    move-object v14, v2

    move v8, v13

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_3

    :pswitch_3c
    move-object v14, v2

    move v8, v13

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_3

    :pswitch_3d
    move-object v14, v2

    move v8, v13

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v14}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v6

    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_3

    :pswitch_3e
    move-object v14, v2

    move v8, v13

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->fixupAppData(Ljava/lang/String;I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_3f
    move-object v14, v2

    move v8, v13

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_40
    move-object v14, v2

    move v8, v13

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_41
    move-object v14, v2

    move v8, v13

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_42
    move-object v14, v2

    move v8, v13

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_43
    move-object v14, v2

    move v8, v13

    sget-object v1, Landroid/os/ReconcileSdkDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ReconcileSdkDataArgs;

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1}, Landroid/os/IInstalld;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_44
    move-object v14, v2

    move v8, v13

    sget-object v1, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/CreateAppDataArgs;

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1}, Landroid/os/IInstalld;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_3

    :pswitch_45
    move-object v14, v2

    move v8, v13

    sget-object v1, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CreateAppDataArgs;

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1}, Landroid/os/IInstalld;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object v0

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_3

    :pswitch_46
    move v8, v13

    invoke-interface {v0}, Landroid/os/IInstalld;->setFirstBoot()V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :pswitch_47
    move-object v14, v2

    move v8, v13

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->destroyUserData(Ljava/lang/String;II)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :pswitch_48
    move-object v14, v2

    move v8, v13

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->createUserData(Ljava/lang/String;III)V

    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    :goto_3
    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
