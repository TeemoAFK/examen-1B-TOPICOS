package com.example.miscalificaciones;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void cerrarAPP (View view){
        finish();
    }

    public void ingresar(View view){
        Intent i = new Intent(this, landing_page.class);
        startActivity(i);
    }
}
