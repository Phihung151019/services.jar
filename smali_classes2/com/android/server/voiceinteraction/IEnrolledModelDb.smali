.class public interface abstract Lcom/android/server/voiceinteraction/IEnrolledModelDb;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract deleteKeyphraseSoundModel(IILjava/lang/String;)Z
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
.end method

.method public abstract getKeyphraseSoundModel(ILjava/lang/String;Ljava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
.end method

.method public abstract updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Z
.end method
