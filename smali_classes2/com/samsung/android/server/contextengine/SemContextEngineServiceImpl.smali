.class public Lcom/samsung/android/server/contextengine/SemContextEngineServiceImpl;
.super Lcom/samsung/android/contextengine/ISemContextEngineManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextengine/ISemContextEngineManager$Stub;-><init>()V

    const-string p0, "ContextEngineManager"

    const-string/jumbo p1, "create"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final setDefault()V
    .locals 0

    return-void
.end method
