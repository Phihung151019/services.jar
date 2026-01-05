.class public Lcom/android/server/am/mars/database/FASEntity;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private strCurBatteryUsage:Ljava/lang/String;

.field private strDisableReason:Ljava/lang/String;

.field private strDisableResetTIme:Ljava/lang/String;

.field private strDisableType:Ljava/lang/String;

.field private strExtras:Ljava/lang/String;

.field private strFasReason:Ljava/lang/String;

.field private strLevel:Ljava/lang/String;

.field private strMode:Ljava/lang/String;

.field private strNew:Ljava/lang/String;

.field private strPackageType:Ljava/lang/String;

.field private strPkgName:Ljava/lang/String;

.field private strPreBatteryUsage:Ljava/lang/String;

.field private strResetTime:Ljava/lang/String;

.field private strUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/FASEntityBuilder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPkgName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strUid:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strMode:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strNew:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strFasReason:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strExtras:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strResetTime:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPackageType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPackageType:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strLevel:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableType:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableResetTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableResetTIme:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPreBatteryUsage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPreBatteryUsage:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getStrDisableReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableReason:Ljava/lang/String;

    return-object p0
.end method

.method public final getStrDisableResetTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableResetTIme:Ljava/lang/String;

    return-object p0
.end method

.method public final getStrDisableType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableType:Ljava/lang/String;

    return-object p0
.end method

.method public final getStrExtras()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strExtras:Ljava/lang/String;

    return-object p0
.end method

.method public final getStrFasReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strFasReason:Ljava/lang/String;

    return-object p0
.end method

.method public final getStrLevel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strLevel:Ljava/lang/String;

    return-object p0
.end method

.method public final getStrMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strMode:Ljava/lang/String;

    return-object p0
.end method

.method public final getStrNew()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strNew:Ljava/lang/String;

    return-object p0
.end method

.method public final getStrPackageType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPackageType:Ljava/lang/String;

    return-object p0
.end method

.method public final getStrPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public final getStrPreBatteryUsage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPreBatteryUsage:Ljava/lang/String;

    return-object p0
.end method

.method public final getStrResetTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strResetTime:Ljava/lang/String;

    return-object p0
.end method

.method public final getStrUid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/FASEntity;->strUid:Ljava/lang/String;

    return-object p0
.end method
