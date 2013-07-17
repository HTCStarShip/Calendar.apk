.class Lcom/htc/calendar/widget/ComposeTitle$FacebookContactInfo;
.super Ljava/lang/Object;
.source "ComposeTitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/widget/ComposeTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacebookContactInfo"
.end annotation


# instance fields
.field public mRawContactId:Ljava/lang/String;

.field public mSourceId:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/calendar/widget/ComposeTitle;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "raw_contact_id"
    .parameter "source_id"

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$FacebookContactInfo;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1210
    iput-object p2, p0, Lcom/htc/calendar/widget/ComposeTitle$FacebookContactInfo;->mRawContactId:Ljava/lang/String;

    .line 1211
    iput-object p3, p0, Lcom/htc/calendar/widget/ComposeTitle$FacebookContactInfo;->mSourceId:Ljava/lang/String;

    .line 1212
    return-void
.end method
