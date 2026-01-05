.class public abstract Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultIMEList:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultDialerPackage:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultSmsPackage:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAssistantPackage:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultWalletPackage:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderEnabled:Z

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;

    iput-boolean v2, v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserverRegistered:Z

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;

    iput-boolean v2, v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiverRegistered:Z

    sput-object v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    return-void
.end method
