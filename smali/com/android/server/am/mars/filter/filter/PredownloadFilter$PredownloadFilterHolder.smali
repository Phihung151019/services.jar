.class public abstract Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadFilterHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/PredownloadFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mTempAllowlist:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mReceiver:Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;

    sput-object v0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/PredownloadFilter;

    return-void
.end method
