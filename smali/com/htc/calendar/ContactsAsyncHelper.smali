.class public Lcom/htc/calendar/ContactsAsyncHelper;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/ContactsAsyncHelper$1;,
        Lcom/htc/calendar/ContactsAsyncHelper$WorkerHandler;,
        Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;,
        Lcom/htc/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_TOKEN:I = -0x1

.field private static final EVENT_LOAD_IMAGE:I = 0x1

.field private static final HTC_DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ContactsAsyncHelper"

.field private static sInstance:Lcom/htc/calendar/ContactsAsyncHelper;

.field private static sThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/htc/calendar/ContactsAsyncHelper;

    invoke-direct {v0}, Lcom/htc/calendar/ContactsAsyncHelper;-><init>()V

    sput-object v0, Lcom/htc/calendar/ContactsAsyncHelper;->sInstance:Lcom/htc/calendar/ContactsAsyncHelper;

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 163
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 164
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 166
    new-instance v1, Lcom/htc/calendar/ContactsAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/calendar/ContactsAsyncHelper$WorkerHandler;-><init>(Lcom/htc/calendar/ContactsAsyncHelper;Landroid/os/Looper;)V

    sput-object v1, Lcom/htc/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/ContactsAsyncHelper;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/calendar/ContactsAsyncHelper;->validateUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static final cancelUpdateImageView(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 297
    sget-object v0, Lcom/htc/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lcom/htc/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    :cond_0
    sget-object v0, Lcom/htc/calendar/ContactsAsyncHelper;->sInstance:Lcom/htc/calendar/ContactsAsyncHelper;

    if-eqz v0, :cond_1

    .line 301
    sget-object v0, Lcom/htc/calendar/ContactsAsyncHelper;->sInstance:Lcom/htc/calendar/ContactsAsyncHelper;

    invoke-virtual {v0, p0}, Lcom/htc/calendar/ContactsAsyncHelper;->removeMessages(I)V

    .line 303
    :cond_1
    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(ILcom/htc/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;JLjava/lang/String;I)V
    .locals 4
    .parameter "token"
    .parameter "listener"
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "event_id"
    .parameter "source_id"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v3, 0x0

    .line 206
    if-nez p4, :cond_0

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    invoke-static {p3, p8}, Lcom/htc/wrap/android/widget/HtcWrapImageView;->setImageResourceWithoutRelayout(Landroid/widget/ImageView;I)V

    .line 245
    :goto_0
    return-void

    .line 217
    :cond_0
    new-instance v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;-><init>(Lcom/htc/calendar/ContactsAsyncHelper$1;)V

    .line 218
    .local v0, args:Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;
    iput-object p2, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 219
    iput-object p3, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    .line 220
    iput-object p4, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    .line 221
    iput p8, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    .line 222
    iput-object p1, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/htc/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;

    .line 223
    iput-wide p5, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->event_id:J

    .line 224
    iput-object p7, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->source_id:Ljava/lang/String;

    .line 227
    sget-object v2, Lcom/htc/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 228
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 229
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 236
    const/4 v2, -0x1

    if-eq p8, v2, :cond_1

    .line 237
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    invoke-static {p3, p8}, Lcom/htc/wrap/android/widget/HtcWrapImageView;->setImageResourceWithoutRelayout(Landroid/widget/ImageView;I)V

    .line 244
    :goto_1
    sget-object v2, Lcom/htc/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 240
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static final updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;JLjava/lang/String;I)V
    .locals 9
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "event_id"
    .parameter "source_id"
    .parameter "placeholderImageResource"

    .prologue
    .line 179
    const/4 v0, -0x1

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/htc/calendar/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(ILcom/htc/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;JLjava/lang/String;I)V

    .line 187
    return-void
.end method

.method private validateUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 306
    if-nez p1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v0

    .line 310
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 252
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;

    .line 253
    .local v0, args:Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_0

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 255
    :pswitch_0
    const/4 v1, 0x0

    .line 257
    .local v1, imagePresent:Z
    iget-object v3, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 258
    iget-object v3, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    check-cast v3, Lcom/htc/widget/QuickContactBadge;

    iget-object v4, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/htc/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 265
    :cond_1
    iget-object v3, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 266
    iget-object v3, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    iget-object v3, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 269
    iget-object v3, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 270
    .local v2, sourceId:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->source_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 271
    iget-object v4, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-static {v4, v3}, Lcom/htc/wrap/android/widget/HtcWrapImageView;->setImageDrawableWithoutRelayout(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 272
    const/4 v1, 0x1

    .line 285
    .end local v2           #sourceId:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v3, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/htc/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;

    if-eqz v3, :cond_0

    .line 288
    iget-object v3, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/htc/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;

    iget v4, p1, Landroid/os/Message;->what:I

    iget-object v5, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-interface {v3, v4, v5, v1}, Lcom/htc/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;->onImageLoadComplete(ILandroid/widget/ImageView;Z)V

    goto :goto_0

    .line 276
    :cond_3
    iget-object v4, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-static {v4, v3}, Lcom/htc/wrap/android/widget/HtcWrapImageView;->setImageDrawableWithoutRelayout(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 277
    const/4 v1, 0x1

    goto :goto_1

    .line 279
    :cond_4
    iget v3, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 280
    iget-object v3, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object v3, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget v4, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    invoke-static {v3, v4}, Lcom/htc/wrap/android/widget/HtcWrapImageView;->setImageResourceWithoutRelayout(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
