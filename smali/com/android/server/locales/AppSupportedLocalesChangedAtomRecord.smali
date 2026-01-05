.class public final Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallingUid:I

.field public mNumLocales:I

.field public mOverrideRemoved:Z

.field public mSameAsPrevConfig:Z

.field public mSameAsResConfig:Z

.field public mStatus:I

.field public mTargetUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mTargetUid:I

    iput v0, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mNumLocales:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mOverrideRemoved:Z

    iput-boolean v0, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsResConfig:Z

    iput-boolean v0, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsPrevConfig:Z

    iput v0, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    iput p1, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mCallingUid:I

    return-void
.end method
