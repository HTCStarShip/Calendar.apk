.class Lcom/htc/calendar/widget/ComposeTitle$11;
.super Ljava/lang/Object;
.source "ComposeTitle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/widget/ComposeTitle;->inputHtcContactList_Facebook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/widget/ComposeTitle;


# direct methods
.method constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 0
    .parameter

    .prologue
    .line 2870
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 2876
    const/4 v10, 0x0

    .line 2879
    .local v10, onlyOne:Z
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mDispalyNameList2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$3500(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2882
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mDispalyNameList2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$3500(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v10, 0x1

    .line 2883
    :goto_0
    const-string v0, "ComposeTitle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDispalyNameList2.size(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mDispalyNameList2:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/calendar/widget/ComposeTitle;->access$3500(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    const/4 v11, 0x0

    .local v11, index:I
    :goto_1
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mDispalyNameList2:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$3500(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_1

    .line 2885
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList2:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$3600(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mDispalyNameList2:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/calendar/widget/ComposeTitle;->access$3500(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mContactIdList2:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/calendar/widget/ComposeTitle;->access$3700(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mRowContactIdList2:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/calendar/widget/ComposeTitle;->access$3800(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->setMailSapphire(Ljava/lang/String;Ljava/lang/String;JJJZZ)V
    invoke-static/range {v0 .. v10}, Lcom/htc/calendar/widget/ComposeTitle;->access$3900(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;Ljava/lang/String;JJJZZ)V

    .line 2884
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2882
    .end local v11           #index:I
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 2895
    :cond_1
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    const/4 v1, 0x0

    #setter for: Lcom/htc/calendar/widget/ComposeTitle;->mDispalyNameList2:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$3502(Lcom/htc/calendar/widget/ComposeTitle;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2896
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    const/4 v1, 0x0

    #setter for: Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList2:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$3602(Lcom/htc/calendar/widget/ComposeTitle;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2897
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    const/4 v1, 0x0

    #setter for: Lcom/htc/calendar/widget/ComposeTitle;->mContactIdList2:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$3702(Lcom/htc/calendar/widget/ComposeTitle;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2898
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    const/4 v1, 0x0

    #setter for: Lcom/htc/calendar/widget/ComposeTitle;->mMethodIdList2:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$4002(Lcom/htc/calendar/widget/ComposeTitle;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2900
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$4100(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$4200(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2903
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$4100(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v10, 0x1

    .line 2905
    :goto_2
    const/4 v11, 0x0

    .restart local v11       #index:I
    :goto_3
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$4100(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_3

    .line 2906
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$4200(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/calendar/widget/ComposeTitle;->access$4100(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->setMailSapphire(Ljava/lang/String;Ljava/lang/String;JJJZZ)V
    invoke-static/range {v0 .. v10}, Lcom/htc/calendar/widget/ComposeTitle;->access$3900(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;Ljava/lang/String;JJJZZ)V

    .line 2905
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2903
    .end local v11           #index:I
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 2916
    :cond_3
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    const/4 v1, 0x0

    #setter for: Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$4102(Lcom/htc/calendar/widget/ComposeTitle;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2917
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    const/4 v1, 0x0

    #setter for: Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$4202(Lcom/htc/calendar/widget/ComposeTitle;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2919
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$11;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    const/4 v1, 0x0

    #setter for: Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$4302(Lcom/htc/calendar/widget/ComposeTitle;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2920
    return-void
.end method
