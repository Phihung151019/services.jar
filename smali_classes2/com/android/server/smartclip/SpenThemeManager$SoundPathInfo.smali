.class public final Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public attachSoundPath:Ljava/lang/String;

.field public detachSoundPath:Ljava/lang/String;

.field public final mWriteSettingHandler:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;-><init>(Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->mWriteSettingHandler:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "attach sound = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", detach sound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
