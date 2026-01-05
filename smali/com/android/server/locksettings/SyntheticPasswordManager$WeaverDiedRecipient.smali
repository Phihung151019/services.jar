.class public final Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDiedRecipient;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDiedRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    const-string/jumbo v0, "SyntheticPasswordManager"

    const-string/jumbo v1, "Weaver service has died"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDiedRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/IWeaver;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDiedRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/IWeaver;

    return-void
.end method
