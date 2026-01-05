.class public Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;
.super Ljava/lang/Exception;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Invalid call to legacy dexopt method while ART Service is in use."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
