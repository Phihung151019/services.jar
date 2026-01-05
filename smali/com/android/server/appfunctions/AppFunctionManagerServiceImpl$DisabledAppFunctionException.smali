.class Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;
.super Ljava/lang/RuntimeException;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const-string/jumbo v0, "The app function is disabled"

    invoke-direct {p0, v0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
