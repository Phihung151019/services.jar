.class public final Lcom/android/server/flags/DynamicFlagBinderDelegate;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final NEW_CALLBACK_SET:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda0;


# instance fields
.field public final mCallbacks:Ljava/util/Map;

.field public final mDeviceConfigListener:Lcom/android/server/flags/DynamicFlagBinderDelegate$1;

.field public final mDynamicFlags:Lcom/android/server/flags/FlagCache;

.field public final mFlagChangeCallback:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;

.field public final mFlagStore:Lcom/android/server/flags/FlagOverrideStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->NEW_CALLBACK_SET:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/flags/FlagOverrideStore;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/flags/FlagCache;

    invoke-direct {v0}, Lcom/android/server/flags/FlagCache;-><init>()V

    iput-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    new-instance v0, Lcom/android/server/flags/DynamicFlagBinderDelegate$1;

    invoke-direct {v0, p0}, Lcom/android/server/flags/DynamicFlagBinderDelegate$1;-><init>(Lcom/android/server/flags/DynamicFlagBinderDelegate;)V

    iput-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDeviceConfigListener:Lcom/android/server/flags/DynamicFlagBinderDelegate$1;

    new-instance v0, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/flags/DynamicFlagBinderDelegate;)V

    iput-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mFlagChangeCallback:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;

    iput-object p1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    iput-object v0, p1, Lcom/android/server/flags/FlagOverrideStore;->mCallback:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;

    return-void
.end method
