.class public abstract Lcom/android/server/am/mars/filter/filter/LockScreenFilter$LockScreenFilterHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/LockScreenFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkg:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgUid:I

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgMap:Ljava/util/Map;

    sput-object v0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$LockScreenFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    return-void
.end method
