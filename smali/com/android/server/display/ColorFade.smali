.class public final Lcom/android/server/display/ColorFade;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field public mBLASTSurfaceControl:Landroid/view/SurfaceControl;

.field public mContext:Landroid/content/Context;

.field public mCreatedResources:Z

.field public mDisplayHeight:I

.field public final mDisplayId:I

.field public mDisplayLayerStack:I

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public mDisplayWidth:I

.field public mEglConfig:Landroid/opengl/EGLConfig;

.field public mEglContext:Landroid/opengl/EGLContext;

.field public mEglDisplay:Landroid/opengl/EGLDisplay;

.field public mEglSurface:Landroid/opengl/EGLSurface;

.field public final mGLBuffers:[I

.field public mGammaLoc:I

.field public mHeightLoc:I

.field public mIsDejanking:Z

.field public mIsResolutionChanged:Z

.field public mIsSemDvfsSupported:Z

.field public mLastWasProtectedContent:Z

.field public mLastWasWideColor:Z

.field public mMaxRadius:F

.field public mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field public mMinRadius:F

.field public mMode:I

.field public mOpacityLoc:I

.field public mPrepared:Z

.field public mProgram:I

.field public final mProjMatrix:[F

.field public mProjMatrixLoc:I

.field public mRadiusLoc:I

.field public final mResolutionChangedCallback:Lcom/android/server/display/ColorFade$1;

.field public mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field public mSurface:Landroid/view/Surface;

.field public mSurfaceAlpha:F

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

.field public mSurfaceVisible:Z

.field public final mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field public mTexCoordLoc:I

.field public final mTexMatrix:[F

.field public mTexMatrixLoc:I

.field public final mTexNames:[I

.field public mTexNamesGenerated:Z

.field public mTexUnitLoc:I

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mVertexBuffer:Ljava/nio/FloatBuffer;

.field public mVertexLoc:I

.field public mVignetteAlphaLoc:I

.field public mWidthLoc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ColorFade"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/display/DisplayManagerInternal;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mIsDejanking:Z

    const/16 v1, 0x10

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v2, Lcom/android/server/display/ColorFade$1;

    invoke-direct {v2, p0}, Lcom/android/server/display/ColorFade$1;-><init>(Lcom/android/server/display/ColorFade;)V

    iput-object v2, p0, Lcom/android/server/display/ColorFade;->mResolutionChangedCallback:Lcom/android/server/display/ColorFade$1;

    iput p1, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    iput-object p2, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mIsSemDvfsSupported:Z

    return-void
.end method

.method public static checkGlErrors(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, " failed: error "

    invoke-static {v1, p0, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "ColorFade"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static loadShader(Landroid/content/Context;II)I
    .locals 4

    const-string v0, "ColorFade"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    invoke-static {p0, v1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    invoke-static {p0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p1, p1, v2

    if-nez p1, :cond_0

    const-string p1, "Could not compile shader "

    const-string v1, ", "

    const-string v3, ":"

    invoke-static {p0, p2, p1, v1, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v2

    :cond_0
    return p0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unrecognized shader "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static logEglError(Ljava/lang/String;)V
    .locals 2

    const-string v0, " failed: error "

    invoke-static {p0, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "ColorFade"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final attachEglContext()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v0, v0, p0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "eglMakeCurrent"

    invoke-static {p0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final createEglSurface(ZZ)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mLastWasProtectedContent:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mLastWasWideColor:Z

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_5

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v3, 0x3038

    aput v3, v0, v1

    aput v3, v0, v2

    const/4 v4, 0x2

    aput v3, v0, v4

    const/4 v5, 0x3

    aput v3, v0, v5

    const/4 v5, 0x4

    aput v3, v0, v5

    if-eqz p2, :cond_3

    const/16 p2, 0x309d

    aput p2, v0, v1

    const/16 p2, 0x3490

    aput p2, v0, v2

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    if-eqz p1, :cond_4

    add-int/lit8 p1, v4, 0x1

    const/16 p2, 0x32c0

    aput p2, v0, v4

    aput v2, v0, p1

    :cond_4
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    invoke-static {p1, p2, v3, v0, v1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez p1, :cond_5

    const-string/jumbo p0, "eglCreateWindowSurface"

    invoke-static {p0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    return v1

    :cond_5
    return v2
.end method

.method public final createSurfaceControl(Z)Z
    .locals 14

    const-string v1, "ColorFade"

    iget v0, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    const-string v2, "ColorFade_d"

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    iget v6, p0, Lcom/android/server/display/ColorFade;->mMode:I

    if-eq v6, v5, :cond_0

    iget-object p0, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v3, p1}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return v4

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    new-instance v6, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v6}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/16 v6, 0x1e

    invoke-virtual {v2, v6, v5}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v7, "ColorFade.createSurface"

    invoke-virtual {v2, v7}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget v7, p0, Lcom/android/server/display/ColorFade;->mMode:I

    if-ne v7, v5, :cond_1

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v2, p1}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    :goto_0
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v7, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v8, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    invoke-virtual {v7, v2, v8}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v7, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v8, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v9, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-virtual {v2, v7, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget v2, p0, Lcom/android/server/display/ColorFade;->mMode:I

    if-eq v2, v5, :cond_2

    new-instance v2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ColorFade BLAST_d"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1, v6, v5}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    new-instance p1, Landroid/graphics/BLASTBufferQueue;

    invoke-direct {p1, v1, v4}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/android/server/display/ColorFade;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {p1}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    new-instance v5, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    iget-object v6, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v8, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v9, p0, Lcom/android/server/display/ColorFade;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v10, p0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    iget v11, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v12, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    iget v7, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    invoke-direct/range {v5 .. v12}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;Landroid/view/SurfaceControl;II)V

    iput-object v5, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    goto :goto_1

    :cond_2
    new-instance v6, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    iget-object v7, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v9, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v12, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v13, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    iget v8, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;Landroid/view/SurfaceControl;II)V

    iput-object v6, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    :goto_1
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mResolutionChangedCallback:Lcom/android/server/display/ColorFade$1;

    iput-object v0, p1, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mCallback:Lcom/android/server/display/ColorFade$1;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return v4

    :goto_2
    const-string/jumbo p1, "Unable to create surface."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public final destroyEglSurface()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "eglDestroySurface"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    :cond_1
    return-void
.end method

.method public final destroyGLShaders()V
    .locals 1

    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo p0, "glDeleteProgram"

    invoke-static {p0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    return-void
.end method

.method public final destroySurface()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object v1, v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManagerInternal;->unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    :cond_2
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    return-void
.end method

.method public final detachEglContext()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz p0, :cond_0

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p0, v0, v0, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    :cond_0
    return-void
.end method

.method public final dismiss()V
    .locals 2

    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ColorFade"

    const-string/jumbo v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismissResources()V

    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroySurface()V

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setColorFadeNightDim(Z)Z

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    :cond_2
    return-void
.end method

.method public final dismissResources()V
    .locals 3

    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ColorFade"

    const-string/jumbo v1, "dismissResources"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const-string/jumbo v0, "glDeleteTextures"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyGLShaders()V

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    const-string/jumbo v0, "glDeleteBuffers"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    iput-boolean v1, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw v0

    :cond_2
    return-void
.end method

.method public final draw(F)V
    .locals 11

    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ColorFade"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "drawFrame: level="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    if-nez v0, :cond_1

    const-string p0, "ColorFade"

    const-string/jumbo p1, "not prepared. so returned"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mResolutionChangedCallback:Lcom/android/server/display/ColorFade$1;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/ColorFade;->mIsResolutionChanged:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->handleResolutionChange()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "ColorFade"

    const-string p1, "Failed to handle resolution change!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_3

    sub-float/2addr v2, p1

    invoke-virtual {p0, v2}, Lcom/android/server/display/ColorFade;->showSurface(F)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v0

    if-nez v0, :cond_4

    const-string p0, "ColorFade"

    const-string/jumbo p1, "attachEglContext() failed. so returned"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0, v0, v0, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    iget v1, p0, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/android/server/display/ColorFade;->mMinRadius:F

    iget v3, p0, Lcom/android/server/display/ColorFade;->mMaxRadius:F

    sub-float/2addr v3, v1

    mul-float/2addr v3, p1

    add-float/2addr v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    sub-float v0, v2, v1

    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/server/display/ColorFade;->drawFaded(FFFF)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_5
    sub-float p1, v2, p1

    float-to-double v3, p1

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double p1, v5, v7

    if-gez p1, :cond_6

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_6
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    :goto_0
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float p1, v3

    add-float/2addr p1, v2

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v3

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v7, v5

    add-double/2addr v7, v3

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v7, v3

    const-wide v3, 0x3fb999999999999aL    # 0.1

    add-double/2addr v7, v3

    double-to-float v1, v7

    div-float v1, v2, v1

    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/android/server/display/ColorFade;->drawFaded(FFFF)V

    :goto_1
    const-string/jumbo p1, "drawFrame"

    invoke-static {p1}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    return-void

    :cond_7
    :try_start_2
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, v0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    invoke-virtual {p0, v2}, Lcom/android/server/display/ColorFade;->showSurface(F)V

    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw p1

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final drawFaded(FFFF)V
    .locals 10

    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "drawFaded: opacity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", gamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " vignetteAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorFade"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/android/server/display/ColorFade;->mRadiusLoc:I

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, Lcom/android/server/display/ColorFade;->mWidthLoc:I

    iget p2, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, Lcom/android/server/display/ColorFade;->mHeightLoc:I

    iget p2, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, Lcom/android/server/display/ColorFade;->mVignetteAlphaLoc:I

    invoke-static {p1, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_0
    const p1, 0x84c0

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    aget p1, p1, v3

    const p2, 0x8d65

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget p3, p1, v3

    const p4, 0x8892

    invoke-static {p4, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget p3, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v4, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    aget p1, p1, v2

    invoke-static {p4, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget p1, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/4 p0, 0x6

    const/4 p1, 0x4

    invoke-static {p0, v3, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {p2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {p4, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public final handleResolutionChange()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    iget v1, v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    iput v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v0, v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayHeight:I

    iput v0, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mIsResolutionChanged:Z

    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    const-string v4, "ColorFade"

    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/Surface;->copyFrom(Landroid/graphics/BLASTBufferQueue;)V

    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_3

    const-string/jumbo p0, "handleResolutionChange(): mEglDisplay is null"

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mLastWasProtectedContent:Z

    iget-boolean v3, p0, Lcom/android/server/display/ColorFade;->mLastWasWideColor:Z

    invoke-virtual {p0, v0, v3}, Lcom/android/server/display/ColorFade;->createEglSurface(ZZ)Z

    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mIsDejanking:Z

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo p0, "handleResolutionChange(): attachEglContext fail !!!"

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v3}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw v0

    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V

    :cond_6
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mIsResolutionChanged:Z

    const-string/jumbo p0, "handleResolutionChange(): Done!"

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    :goto_1
    const-string/jumbo v0, "handleResolutionChange(): mSurface or mSurfaceControl is null"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mIsResolutionChanged:Z

    return v2
.end method

.method public final initGLBuffers()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    int-to-float v2, v2

    sget-boolean v3, Lcom/android/server/display/ColorFade;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setQuad: x=0.0, y=0.0, w="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ColorFade"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-float/2addr v2, v4

    const/4 v7, 0x3

    invoke-virtual {v0, v7, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-float/2addr v1, v4

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v8, 0x5

    invoke-virtual {v0, v8, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    aget v0, v0, v3

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2800

    const/16 v2, 0x2600

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v2, 0x812f

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    invoke-static {v6, v0, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    aget v1, v0, v3

    const v2, 0x8892

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/2addr v1, v7

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const v6, 0x88e4

    invoke-static {v2, v1, v4, v6}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    aget v0, v0, v5

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/2addr v0, v7

    iget-object p0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v2, v0, p0, v6}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public final initGLShaders(Landroid/content/Context;)Z
    .locals 4

    iget v0, p0, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x110000e

    const v2, 0x110000d

    goto :goto_0

    :cond_0
    const v0, 0x1100003

    const v2, 0x1100002

    :goto_0
    const v3, 0x8b31

    invoke-static {p1, v0, v3}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result v0

    const v3, 0x8b30

    invoke-static {p1, v2, v3}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result p1

    invoke-static {}, Landroid/opengl/GLES20;->glReleaseShaderCompiler()V

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyGLShaders()V

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "position"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "uv"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "proj_matrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "tex_matrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "opacity"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    iget p1, p0, Lcom/android/server/display/ColorFade;->mMode:I

    if-ne p1, v1, :cond_2

    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "radius"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mRadiusLoc:I

    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "width"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mWidthLoc:I

    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "height"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mHeightLoc:I

    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "vignetteAlpha"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mVignetteAlphaLoc:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "gamma"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    :goto_1
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "texUnit"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget p0, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    invoke-static {p0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_2
    return v2
.end method

.method public final ortho(FF)V
    .locals 5

    const/4 v0, 0x0

    sub-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v2, v1

    iget-object p0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v4, 0x0

    aput v3, p0, v4

    const/4 v3, 0x1

    aput v0, p0, v3

    const/4 v3, 0x2

    aput v0, p0, v3

    const/4 v3, 0x3

    aput v0, p0, v3

    const/4 v3, 0x4

    aput v0, p0, v3

    sub-float v3, p2, v0

    div-float/2addr v2, v3

    const/4 v4, 0x5

    aput v2, p0, v4

    const/4 v2, 0x6

    aput v0, p0, v2

    const/4 v2, 0x7

    aput v0, p0, v2

    const/16 v2, 0x8

    aput v0, p0, v2

    const/16 v2, 0x9

    aput v0, p0, v2

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v4, 0xa

    aput v2, p0, v4

    const/16 v2, 0xb

    aput v0, p0, v2

    add-float/2addr p1, v0

    neg-float p1, p1

    div-float/2addr p1, v1

    const/16 v1, 0xc

    aput p1, p0, v1

    add-float/2addr p2, v0

    neg-float p1, p2

    div-float/2addr p1, v3

    const/16 p2, 0xd

    aput p1, p0, p2

    const/high16 p1, -0x80000000

    const/16 p2, 0xe

    aput p1, p0, p2

    const/16 p1, 0xf

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, p0, p1

    return-void
.end method

.method public final showSurface(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v2, 0x40000001    # 2.0000002f

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    iput p1, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    return-void
.end method
