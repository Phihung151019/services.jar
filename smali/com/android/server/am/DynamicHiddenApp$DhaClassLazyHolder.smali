.class public abstract Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

.field public static isinitClass:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/DynamicHiddenApp;

    invoke-direct {v0}, Lcom/android/server/am/DynamicHiddenApp;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->isinitClass:Z

    return-void
.end method
