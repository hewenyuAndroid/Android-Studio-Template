package ${packageName};

import com.sihongit.gb.R;
import com.sihongit.gb.base.BaseActivity;

public class ${activityClass} extends BaseActivity<${presenterClass}> implements ${mvpInterface} {

    @Override
    protected int getLayoutId() {
        return R.layout.${layoutName};
    }

    @Override
    protected void onPresenterCreate() {

    }
    
}
