.class public final synthetic Lcom/android/server/pm/Installer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/Installer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/Installer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/Installer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/Installer;

    sget v0, Lcom/android/server/pm/Installer;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->connect()V

    return-void
.end method
