.class public abstract Lcom/android/server/am/mars/MARsHistoryBuffer$MARsHistoryBufferHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/MARsHistoryBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/MARsHistoryBuffer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/mars/MARsHistoryBuffer;->size:I

    iput v1, v0, Lcom/android/server/am/mars/MARsHistoryBuffer;->pointer:I

    sput-object v0, Lcom/android/server/am/mars/MARsHistoryBuffer$MARsHistoryBufferHolder;->INSTANCE:Lcom/android/server/am/mars/MARsHistoryBuffer;

    return-void
.end method
