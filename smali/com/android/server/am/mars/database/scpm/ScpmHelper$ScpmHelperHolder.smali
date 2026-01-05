.class public abstract Lcom/android/server/am/mars/database/scpm/ScpmHelper$ScpmHelperHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/database/scpm/ScpmHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/database/scpm/ScpmHelper;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/server/am/mars/database/scpm/ScpmApiContract$MessageType;->NONE:Lcom/android/server/am/mars/database/scpm/ScpmApiContract$MessageType;

    iput-object v1, v0, Lcom/android/server/am/mars/database/scpm/ScpmHelper;->mMessageType:Lcom/android/server/am/mars/database/scpm/ScpmApiContract$MessageType;

    sput-object v0, Lcom/android/server/am/mars/database/scpm/ScpmHelper$ScpmHelperHolder;->INSTANCE:Lcom/android/server/am/mars/database/scpm/ScpmHelper;

    return-void
.end method
