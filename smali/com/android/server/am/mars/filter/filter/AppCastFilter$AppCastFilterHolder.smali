.class public abstract Lcom/android/server/am/mars/filter/filter/AppCastFilter$AppCastFilterHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/AppCastFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastEnabledObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackageObserver:Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mIsAppCastEnabled:Z

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackage:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$AppCastFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    return-void
.end method
